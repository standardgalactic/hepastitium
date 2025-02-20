use strict;
use warnings;
use LWP::Simple;
use JSON;

my $url = 'https://api.github.com/users/standardgalactic';
my $json = get($url);
my $data = decode_json($json);

print "User: $data->{login}\n";
print "Name: $data->{name}\n";
print "Bio: $data->{bio}\n";
print "Public Repos: $data->{public_repos}\n";
