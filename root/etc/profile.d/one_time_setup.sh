#!/bin/sh

echo Please answer the following questions to complete the mingwGitDevEnv setup!
read -n 1 -s -p "Press any key to continue..."
echo

# Force an update of CPAN to get "notest".
perl -MCPAN -e "CPAN::Shell->force(qw(install CPAN));"

# Update prove without testing to get "--jobs".
perl -MCPAN -e "CPAN::Shell->notest(qw(install App::Prove));"
