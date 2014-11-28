require 'spec_helper'

describe Arachni::Framework::Parts::Platform do
    include_examples 'framework'

    describe '#list_platforms' do
        it 'returns information about all valid platforms' do
            subject.list_platforms.should == {
                'Operating systems' => {
                    unix:    'Generic Unix family',
                    linux:   'Linux',
                    bsd:     'Generic BSD family',
                    aix:     'IBM AIX',
                    solaris: 'Solaris',
                    windows: 'MS Windows'
                },
                'Databases' => {
                    access:     'MS Access',
                    coldfusion: 'ColdFusion',
                    db2:        'DB2',
                    emc:        'EMC',
                    firebird:   'Firebird',
                    frontbase:  'Frontbase',
                    hsqldb:     'HSQLDB',
                    informix:   'Informix',
                    ingres:     'IngresDB',
                    interbase:  'InterBase',
                    maxdb:      'SaP Max DB',
                    mssql:      'MSSQL',
                    mysql:      'MySQL',
                    oracle:     'Oracle',
                    pgsql:      'Postgresql',
                    sqlite:     'SQLite',
                    sybase:     'Sybase',
                    mongodb:    'MongoDB'
                },
                'Web servers' => {
                    apache: 'Apache',
                    iis:    'IIS',
                    jetty:  'Jetty',
                    nginx:  'Nginx',
                    tomcat: 'TomCat'
                },
                'Programming languages' => {
                    asp:    'ASP',
                    aspx:   'ASP.NET',
                    jsp:    'JSP',
                    perl:   'Perl',
                    php:    'PHP',
                    python: 'Python',
                    ruby:   'Ruby'
                },
                'Frameworks' => {
                    rack: 'Rack'
                }
            }

        end
    end

end
