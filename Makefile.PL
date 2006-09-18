
use ExtUtils::MakeMaker;

my $fann_lib="";
my $fan_inc="";

@ARGV = map {
    if (/^FANN_LIB=(.*)/) {
        $fann_lib = "-L$1 ";
        ()
    }
    elsif (/^FANN_INCLUDE=(.*)/) {
        $fann_inc = "-I$1 ";
        ()
    }
    else {
        $_
    }
} @ARGV;


WriteMakefile( NAME => 'AI::FANN',
               VERSION_FROM => 'lib/AI/FANN.pm',
               PREREQ_PM => {},
               ABSTRACT_FROM => 'lib/AI/FANN.pm',
               AUTHOR => 'Salvador Fandiño <sfandino@yahoo.com>',
               LIBS => ["${fann_lib}-ldoublefann"],
               DEFINE => '',
               INC => "${fann_inc}-I.",
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

