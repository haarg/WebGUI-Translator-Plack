use Plack::Builder;
use Plack::App::File;
use Cwd qw(cwd);

builder {
    enable 'WebGUI::Translator',
        webgui_lib      => '/data/WebGUI/lib',
        file_root       => cwd . '/data/',
        templates       => cwd . '/share/templates/',
#        remote          => 'git@github.com/plainblack/webgui-translations.git',
    ;
    Plack::App::File->new(root => cwd . '/share/static/');
};

