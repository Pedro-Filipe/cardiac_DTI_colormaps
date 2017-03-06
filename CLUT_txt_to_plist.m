function CLUT_txt_to_plist(optional_filein)
%function CLUT_txt_to_plist(optional_filein)
%Converts a text file in the format [red, green, blue]x256 scaled from 0 - 1 
%to a .plist format for import into Osirix. 
%Input: filename (*.txt) or will open a file dialog for selection.
%Ouput:  Same filename.plist
%Andrew Scott, Royal Brompton Hospital
%April 2016.  
%version 1.1 - change scale to 255.
%a.scott@rbht.nhs.uk
%No warranties

scale=255;
header={'<?xml version="1.0" encoding="UTF-8"?>', '<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">', '<plist version="1.0">', '<dict>'};
footer={'</dict>', '</plist>'};
if(~exist('optional_filein', 'var'))
    [fname, pname]=uigetfile('*.txt', 'Choose a file containing CLUT');
        fullfilein=fullfile(pname, fname);
else
    fullfilein=optional_filein;
end
fullfileout=strrep(fullfilein, 'txt', 'plist');
  fid=fopen(fullfilein, 'r');
if(fid==-1)
    error('Failed to open specified input file');
end

dat=fscanf(fid, '%f');
fclose(fid);
datmat=transpose(reshape(dat, 3, []));
if(size(datmat, 1)~=256)
    warning('Unexpected length of the input data (not 256)');
end
datmat=round(datmat.*scale);

columnheaders={'Red', 'Green', 'Blue'};

% reddat=datmat(:,1);
% greendat=datmat(:,2);
% bluedat=datmat(:,3);

fidout=fopen(fullfileout, 'wt');
if(fidout==-1)
        error(['Failed to open output file: ', fullfileout]);
end
for ind=1:numel(header)
    fprintf(fidout, '%s\n', header{ind});
end

for indc=1:size(datmat, 2)
    fprintf(fidout, ['<key>', columnheaders{indc}, '</key>\n']);
    fprintf(fidout, '<array>\n');
    for indel=1:size(datmat, 1)
            fprintf(fidout, ['<integer>', num2str(datmat(indel, indc)),'</integer>\n']);
    end
    fprintf(fidout, '</array>\n');
end
for ind=1:numel(footer)
        fprintf(fidout, '%s\n', footer{ind});
end
    
fclose(fidout);