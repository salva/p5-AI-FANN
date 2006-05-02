
use ExtUtils::MakeMaker;

WriteMakefile( NAME => 'AI::FANN',
               VERSION_FROM => 'lib/AI/FANN.pm',
               PREREQ_PM => {},
               ABSTRACT_FROM => 'lib/AI/FANN.pm',
               AUTHOR => 'Salvador Fandiño <sfandino@yahoo.com>',
               LIBS => ['-ldoublefann'],
               DEFINE => '',
               INC => '-I.',
               OBJECT => '$(BASEEXT)$(OBJ_EXT) morefann$(OBJ_EXT)',
               #OPTIMIZE => '-g -O0',
               depend => { '$(BASEEXT).c' => 'constants.h accessors.xsh' }
             );

sub MY::postamble {
    return <<MAKE_FRAG

constants.h: genconstants
\t\$(PERL) genconstants > constants.h

accessors.xsh: genaccessors
\t\$(PERL) genaccessors > accessors.xsh

MAKE_FRAG

}
