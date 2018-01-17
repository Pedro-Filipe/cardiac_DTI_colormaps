% MATLAB script to create PNGs from the colormap data files

colormap_file_list = dir('colormaps_data/*.txt');
n_files = length(colormap_file_list);

% vector = 1:256;

for file_index = 1 : n_files
    
    current_file = colormap_file_list(file_index).name;
    dots = strfind(current_file,'.');
    current_name = current_file(1:dots-1);
    current_name = strrep(current_name,'_',' ');
    rgb_array = importdata(['colormaps_data/' current_file]);
    
    h = figure('Visible','off','Units', 'Pixels','Position',[0 0 1024 100]);
    % % %     title(current_name,'FontName','Helvetica Neue','FontSize',25)
    vector = 1 : size(rgb_array,1);
    image(vector)
    colormap(rgb_array);
    ax = gca;
    ax.Box = 'off';
    ax.XTick = [];
    ax.YTick = [];
    current_name = strrep(current_name,' ','_');
    set(gca,'LooseInset',get(gca,'TightInset'))
    print(gcf,'-dpng',['colormaps_pngs/' current_name '.png'])
    close(h)

end