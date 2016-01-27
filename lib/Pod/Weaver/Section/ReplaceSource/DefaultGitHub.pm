package Pod::Weaver::Section::ReplaceSource::DefaultGitHub;

# DATE
# VERSION

use 5.010001;
use Moose;
#use Text::Wrap ();
extends 'Pod::Weaver::Section::Source::DefaultGitHub';
with 'Pod::Weaver::Role::SectionReplacer';

sub default_section_name { 'SOURCE' }

no Moose;
1;
# ABSTRACT: Add or replace a SOURCE section (repository defaults to GitHub)

=for Pod::Coverage weave_section

=head1 SYNOPSIS

This section plugin provides the same behaviour as
L<Pod::Weaver::Section::Source::DefaultGitHub> but with the
L<Pod::Weaver::Role::SectionReplacer> role applied.

In your F<weaver.ini>:

 [ReplaceSource::DefaultGitHub]

If C<repository> is not specified in F<dist.ini>, will search for github
user/repo name from git config file (C<.git/config>).

To specify a source repository other than C<https://github.com/USER/REPO>, in
F<dist.ini>:

 [MetaResources]
 repository=http://example.com/


=head1 DESCRIPTION

This section plugin adds or replace a SOURCE section, using C<repository>
metadata or (if not specified) GitHub.


=head1 ATTRIBUTES

=head2 text

The text that is added. C<%s> is replaced by the repository URL.

Default:

 Source repository is at LE<lt>%sE<gt>.


=head1 SEE ALSO

L<Pod::Weaver::Section::Source::DefaultGitHub>

=cut
