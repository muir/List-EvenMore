
use ExtUtils::MakeMaker;

WriteMakefile( 
	'VERSION_FROM' => 'lib/List/EvenMoreUtils.pm',
	'NAME' => 'List-EvenMore',
	($] >= 5.005 ?
	('ABSTRACT' => 'Even more List utilities',
	'AUTHOR'   => 'David Muir Sharnoff <muir@idiom.org>') : ()),
	'dist' => { COMPRESS=>"gzip", SUFFIX=>"gz" },
	'PREREQ_PM' => {
		'String::CRC'		=> 0,
	},
	'META_MERGE'     => {
		resources  => {
			repository => 'http://github.com/muir/List-EvenMore',
		},
	},
);

package MY;

sub postamble {
    <<"END_OF_POSTAMBLE";

pm_to_blib: README

README: lib/List/EvenMoreUtils.pm
\tpod2text lib/List/EvenMoreUtils.pm > README

END_OF_POSTAMBLE
}

