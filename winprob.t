use Mojolicious::Lite;
use Test::More;
use Test::Mojo;

get '/' => { data => 'Hello World' };

my $t = Test::Mojo->new;

$t->get_ok('/..\..\..\..\..\..\..\..\..\..\..\windows\win.ini')
  ->content_unlike(qr/extensions/);

done_testing();
