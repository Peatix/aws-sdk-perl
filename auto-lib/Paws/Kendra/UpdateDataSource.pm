
package Paws::Kendra::UpdateDataSource;
  use Moose;
  has Configuration => (is => 'ro', isa => 'Paws::Kendra::DataSourceConfiguration');
  has CustomDocumentEnrichmentConfiguration => (is => 'ro', isa => 'Paws::Kendra::CustomDocumentEnrichmentConfiguration');
  has Description => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has IndexId => (is => 'ro', isa => 'Str', required => 1);
  has LanguageCode => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has RoleArn => (is => 'ro', isa => 'Str');
  has Schedule => (is => 'ro', isa => 'Str');
  has VpcConfiguration => (is => 'ro', isa => 'Paws::Kendra::DataSourceVpcConfiguration');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDataSource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::UpdateDataSource - Arguments for method UpdateDataSource on L<Paws::Kendra>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDataSource on the
L<AWSKendraFrontendService|Paws::Kendra> service. Use the attributes of this class
as arguments to method UpdateDataSource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDataSource.

=head1 SYNOPSIS

    my $kendra = Paws->service('Kendra');
    $kendra->UpdateDataSource(
      Id            => 'MyDataSourceId',
      IndexId       => 'MyIndexId',
      Configuration => {
        AlfrescoConfiguration => {
          SecretArn            => 'MySecretArn',    # min: 1, max: 1284
          SiteId               => 'MySiteId',       # min: 1, max: 128
          SiteUrl              => 'MySiteUrl',      # min: 1, max: 2048
          SslCertificateS3Path => {
            Bucket => 'MyS3BucketName',             # min: 3, max: 63
            Key    => 'MyS3ObjectKey',              # min: 1, max: 1024

          },
          BlogFieldMappings => [
            {
              DataSourceFieldName => 'MyDataSourceFieldName', # min: 1, max: 100
              IndexFieldName      => 'MyIndexFieldName',      # min: 1, max: 30
              DateFieldFormat     =>
                'MyDataSourceDateFieldFormat',    # min: 4, max: 40; OPTIONAL
            },
            ...
          ],    # min: 1, max: 100; OPTIONAL
          CrawlComments                => 1,    # OPTIONAL
          CrawlSystemFolders           => 1,    # OPTIONAL
          DocumentLibraryFieldMappings => [
            {
              DataSourceFieldName => 'MyDataSourceFieldName', # min: 1, max: 100
              IndexFieldName      => 'MyIndexFieldName',      # min: 1, max: 30
              DateFieldFormat     =>
                'MyDataSourceDateFieldFormat',    # min: 4, max: 40; OPTIONAL
            },
            ...
          ],    # min: 1, max: 100; OPTIONAL
          EntityFilter => [
            'wiki', ...    # values: wiki, blog, documentLibrary
          ],    # min: 1, max: 3; OPTIONAL
          ExclusionPatterns => [
            'MyDataSourceInclusionsExclusionsStringsMember',
            ...    # min: 1, max: 300
          ],    # max: 250; OPTIONAL
          InclusionPatterns => [
            'MyDataSourceInclusionsExclusionsStringsMember',
            ...    # min: 1, max: 300
          ],    # max: 250; OPTIONAL
          VpcConfiguration => {
            SecurityGroupIds => [
              'MyVpcSecurityGroupId', ...    # min: 1, max: 200
            ],    # min: 1, max: 10
            SubnetIds => [
              'MySubnetId', ...    # min: 1, max: 200
            ],    # min: 1, max: 6

          },    # OPTIONAL
          WikiFieldMappings => [
            {
              DataSourceFieldName => 'MyDataSourceFieldName', # min: 1, max: 100
              IndexFieldName      => 'MyIndexFieldName',      # min: 1, max: 30
              DateFieldFormat     =>
                'MyDataSourceDateFieldFormat',    # min: 4, max: 40; OPTIONAL
            },
            ...
          ],    # min: 1, max: 100; OPTIONAL
        },    # OPTIONAL
        BoxConfiguration => {
          EnterpriseId         => 'MyEnterpriseId',    # min: 1, max: 64
          SecretArn            => 'MySecretArn',       # min: 1, max: 1284
          CommentFieldMappings => [
            {
              DataSourceFieldName => 'MyDataSourceFieldName', # min: 1, max: 100
              IndexFieldName      => 'MyIndexFieldName',      # min: 1, max: 30
              DateFieldFormat     =>
                'MyDataSourceDateFieldFormat',    # min: 4, max: 40; OPTIONAL
            },
            ...
          ],    # min: 1, max: 100; OPTIONAL
          CrawlComments     => 1,    # OPTIONAL
          CrawlTasks        => 1,    # OPTIONAL
          CrawlWebLinks     => 1,    # OPTIONAL
          ExclusionPatterns => [
            'MyDataSourceInclusionsExclusionsStringsMember',
            ...                      # min: 1, max: 300
          ],    # max: 250; OPTIONAL
          FileFieldMappings => [
            {
              DataSourceFieldName => 'MyDataSourceFieldName', # min: 1, max: 100
              IndexFieldName      => 'MyIndexFieldName',      # min: 1, max: 30
              DateFieldFormat     =>
                'MyDataSourceDateFieldFormat',    # min: 4, max: 40; OPTIONAL
            },
            ...
          ],    # min: 1, max: 100; OPTIONAL
          InclusionPatterns => [
            'MyDataSourceInclusionsExclusionsStringsMember',
            ...    # min: 1, max: 300
          ],    # max: 250; OPTIONAL
          TaskFieldMappings => [
            {
              DataSourceFieldName => 'MyDataSourceFieldName', # min: 1, max: 100
              IndexFieldName      => 'MyIndexFieldName',      # min: 1, max: 30
              DateFieldFormat     =>
                'MyDataSourceDateFieldFormat',    # min: 4, max: 40; OPTIONAL
            },
            ...
          ],    # min: 1, max: 100; OPTIONAL
          UseChangeLog     => 1,    # OPTIONAL
          VpcConfiguration => {
            SecurityGroupIds => [
              'MyVpcSecurityGroupId', ...    # min: 1, max: 200
            ],    # min: 1, max: 10
            SubnetIds => [
              'MySubnetId', ...    # min: 1, max: 200
            ],    # min: 1, max: 6

          },    # OPTIONAL
          WebLinkFieldMappings => [
            {
              DataSourceFieldName => 'MyDataSourceFieldName', # min: 1, max: 100
              IndexFieldName      => 'MyIndexFieldName',      # min: 1, max: 30
              DateFieldFormat     =>
                'MyDataSourceDateFieldFormat',    # min: 4, max: 40; OPTIONAL
            },
            ...
          ],    # min: 1, max: 100; OPTIONAL
        },    # OPTIONAL
        ConfluenceConfiguration => {
          SecretArn               => 'MySecretArn',    # min: 1, max: 1284
          ServerUrl               => 'MyUrl',          # min: 1, max: 2048
          Version                 => 'CLOUD',          # values: CLOUD, SERVER
          AttachmentConfiguration => {
            AttachmentFieldMappings => [
              {
                DataSourceFieldName => 'AUTHOR'
                , # values: AUTHOR, CONTENT_TYPE, CREATED_DATE, DISPLAY_URL, FILE_SIZE, ITEM_TYPE, PARENT_ID, SPACE_KEY, SPACE_NAME, URL, VERSION; OPTIONAL
                DateFieldFormat =>
                  'MyDataSourceDateFieldFormat',    # min: 4, max: 40; OPTIONAL
                IndexFieldName => 'MyIndexFieldName',    # min: 1, max: 30
              },
              ...
            ],    # min: 1, max: 11; OPTIONAL
            CrawlAttachments => 1,    # OPTIONAL
          },    # OPTIONAL
          AuthenticationType =>
            'HTTP_BASIC',    # values: HTTP_BASIC, PAT; OPTIONAL
          BlogConfiguration => {
            BlogFieldMappings => [
              {
                DataSourceFieldName => 'AUTHOR'
                , # values: AUTHOR, DISPLAY_URL, ITEM_TYPE, LABELS, PUBLISH_DATE, SPACE_KEY, SPACE_NAME, URL, VERSION; OPTIONAL
                DateFieldFormat =>
                  'MyDataSourceDateFieldFormat',    # min: 4, max: 40; OPTIONAL
                IndexFieldName => 'MyIndexFieldName',    # min: 1, max: 30
              },
              ...
            ],    # min: 1, max: 9; OPTIONAL
          },    # OPTIONAL
          ExclusionPatterns => [
            'MyDataSourceInclusionsExclusionsStringsMember',
            ...    # min: 1, max: 300
          ],    # max: 250; OPTIONAL
          InclusionPatterns => [
            'MyDataSourceInclusionsExclusionsStringsMember',
            ...    # min: 1, max: 300
          ],    # max: 250; OPTIONAL
          PageConfiguration => {
            PageFieldMappings => [
              {
                DataSourceFieldName => 'AUTHOR'
                , # values: AUTHOR, CONTENT_STATUS, CREATED_DATE, DISPLAY_URL, ITEM_TYPE, LABELS, MODIFIED_DATE, PARENT_ID, SPACE_KEY, SPACE_NAME, URL, VERSION; OPTIONAL
                DateFieldFormat =>
                  'MyDataSourceDateFieldFormat',    # min: 4, max: 40; OPTIONAL
                IndexFieldName => 'MyIndexFieldName',    # min: 1, max: 30
              },
              ...
            ],    # min: 1, max: 12; OPTIONAL
          },    # OPTIONAL
          ProxyConfiguration => {
            Host        => 'MyHost',         # min: 1, max: 253
            Port        => 1,                # min: 1, max: 65535
            Credentials => 'MySecretArn',    # min: 1, max: 1284
          },    # OPTIONAL
          SpaceConfiguration => {
            CrawlArchivedSpaces => 1,    # OPTIONAL
            CrawlPersonalSpaces => 1,    # OPTIONAL
            ExcludeSpaces       => [
              'MyConfluenceSpaceIdentifier', ...    # min: 1, max: 255
            ],    # min: 1; OPTIONAL
            IncludeSpaces => [
              'MyConfluenceSpaceIdentifier', ...    # min: 1, max: 255
            ],    # min: 1; OPTIONAL
            SpaceFieldMappings => [
              {
                DataSourceFieldName => 'DISPLAY_URL'
                ,    # values: DISPLAY_URL, ITEM_TYPE, SPACE_KEY, URL; OPTIONAL
                DateFieldFormat =>
                  'MyDataSourceDateFieldFormat',    # min: 4, max: 40; OPTIONAL
                IndexFieldName => 'MyIndexFieldName',    # min: 1, max: 30
              },
              ...
            ],    # min: 1, max: 4; OPTIONAL
          },    # OPTIONAL
          VpcConfiguration => {
            SecurityGroupIds => [
              'MyVpcSecurityGroupId', ...    # min: 1, max: 200
            ],    # min: 1, max: 10
            SubnetIds => [
              'MySubnetId', ...    # min: 1, max: 200
            ],    # min: 1, max: 6

          },    # OPTIONAL
        },    # OPTIONAL
        DatabaseConfiguration => {
          ColumnConfiguration => {
            ChangeDetectingColumns => [
              'MyColumnName', ...    # min: 1, max: 100
            ],    # min: 1, max: 5
            DocumentDataColumnName  => 'MyColumnName',    # min: 1, max: 100
            DocumentIdColumnName    => 'MyColumnName',    # min: 1, max: 100
            DocumentTitleColumnName => 'MyColumnName',    # min: 1, max: 100
            FieldMappings           => [
              {
                DataSourceFieldName =>
                  'MyDataSourceFieldName',                # min: 1, max: 100
                IndexFieldName  => 'MyIndexFieldName',    # min: 1, max: 30
                DateFieldFormat =>
                  'MyDataSourceDateFieldFormat',    # min: 4, max: 40; OPTIONAL
              },
              ...
            ],    # min: 1, max: 100; OPTIONAL
          },
          ConnectionConfiguration => {
            DatabaseHost => 'MyDatabaseHost',    # min: 1, max: 253
            DatabaseName => 'MyDatabaseName',    # min: 1, max: 100
            DatabasePort => 1,                   # min: 1, max: 65535
            SecretArn    => 'MySecretArn',       # min: 1, max: 1284
            TableName    => 'MyTableName',       # min: 1, max: 100

          },
          DatabaseEngineType => 'RDS_AURORA_MYSQL'
          , # values: RDS_AURORA_MYSQL, RDS_AURORA_POSTGRESQL, RDS_MYSQL, RDS_POSTGRESQL
          AclConfiguration => {
            AllowedGroupsColumnName => 'MyColumnName',    # min: 1, max: 100

          },    # OPTIONAL
          SqlConfiguration => {
            QueryIdentifiersEnclosingOption =>
              'DOUBLE_QUOTES',    # values: DOUBLE_QUOTES, NONE; OPTIONAL
          },    # OPTIONAL
          VpcConfiguration => {
            SecurityGroupIds => [
              'MyVpcSecurityGroupId', ...    # min: 1, max: 200
            ],    # min: 1, max: 10
            SubnetIds => [
              'MySubnetId', ...    # min: 1, max: 200
            ],    # min: 1, max: 6

          },    # OPTIONAL
        },    # OPTIONAL
        FsxConfiguration => {
          FileSystemId     => 'MyFileSystemId',    # min: 11, max: 21
          FileSystemType   => 'WINDOWS',           # values: WINDOWS
          VpcConfiguration => {
            SecurityGroupIds => [
              'MyVpcSecurityGroupId', ...          # min: 1, max: 200
            ],    # min: 1, max: 10
            SubnetIds => [
              'MySubnetId', ...    # min: 1, max: 200
            ],    # min: 1, max: 6

          },    # OPTIONAL
          ExclusionPatterns => [
            'MyDataSourceInclusionsExclusionsStringsMember',
            ...    # min: 1, max: 300
          ],    # max: 250; OPTIONAL
          FieldMappings => [
            {
              DataSourceFieldName => 'MyDataSourceFieldName', # min: 1, max: 100
              IndexFieldName      => 'MyIndexFieldName',      # min: 1, max: 30
              DateFieldFormat     =>
                'MyDataSourceDateFieldFormat',    # min: 4, max: 40; OPTIONAL
            },
            ...
          ],    # min: 1, max: 100; OPTIONAL
          InclusionPatterns => [
            'MyDataSourceInclusionsExclusionsStringsMember',
            ...    # min: 1, max: 300
          ],    # max: 250; OPTIONAL
          SecretArn => 'MySecretArn',    # min: 1, max: 1284
        },    # OPTIONAL
        GitHubConfiguration => {
          SecretArn                 => 'MySecretArn',    # min: 1, max: 1284
          ExclusionFileNamePatterns => [
            'MyString', ...                              # min: 1, max: 2048
          ],    # OPTIONAL
          ExclusionFileTypePatterns => [
            'MyString', ...    # min: 1, max: 2048
          ],    # OPTIONAL
          ExclusionFolderNamePatterns => [
            'MyString', ...    # min: 1, max: 2048
          ],    # OPTIONAL
          GitHubCommitConfigurationFieldMappings => [
            {
              DataSourceFieldName => 'MyDataSourceFieldName', # min: 1, max: 100
              IndexFieldName      => 'MyIndexFieldName',      # min: 1, max: 30
              DateFieldFormat     =>
                'MyDataSourceDateFieldFormat',    # min: 4, max: 40; OPTIONAL
            },
            ...
          ],    # min: 1, max: 100; OPTIONAL
          GitHubDocumentCrawlProperties => {
            CrawlIssue                        => 1,    # OPTIONAL
            CrawlIssueComment                 => 1,    # OPTIONAL
            CrawlIssueCommentAttachment       => 1,    # OPTIONAL
            CrawlPullRequest                  => 1,    # OPTIONAL
            CrawlPullRequestComment           => 1,    # OPTIONAL
            CrawlPullRequestCommentAttachment => 1,    # OPTIONAL
            CrawlRepositoryDocuments          => 1,    # OPTIONAL
          },    # OPTIONAL
          GitHubIssueAttachmentConfigurationFieldMappings => [
            {
              DataSourceFieldName => 'MyDataSourceFieldName', # min: 1, max: 100
              IndexFieldName      => 'MyIndexFieldName',      # min: 1, max: 30
              DateFieldFormat     =>
                'MyDataSourceDateFieldFormat',    # min: 4, max: 40; OPTIONAL
            },
            ...
          ],    # min: 1, max: 100; OPTIONAL
          GitHubIssueCommentConfigurationFieldMappings => [
            {
              DataSourceFieldName => 'MyDataSourceFieldName', # min: 1, max: 100
              IndexFieldName      => 'MyIndexFieldName',      # min: 1, max: 30
              DateFieldFormat     =>
                'MyDataSourceDateFieldFormat',    # min: 4, max: 40; OPTIONAL
            },
            ...
          ],    # min: 1, max: 100; OPTIONAL
          GitHubIssueDocumentConfigurationFieldMappings => [
            {
              DataSourceFieldName => 'MyDataSourceFieldName', # min: 1, max: 100
              IndexFieldName      => 'MyIndexFieldName',      # min: 1, max: 30
              DateFieldFormat     =>
                'MyDataSourceDateFieldFormat',    # min: 4, max: 40; OPTIONAL
            },
            ...
          ],    # min: 1, max: 100; OPTIONAL
          GitHubPullRequestCommentConfigurationFieldMappings => [
            {
              DataSourceFieldName => 'MyDataSourceFieldName', # min: 1, max: 100
              IndexFieldName      => 'MyIndexFieldName',      # min: 1, max: 30
              DateFieldFormat     =>
                'MyDataSourceDateFieldFormat',    # min: 4, max: 40; OPTIONAL
            },
            ...
          ],    # min: 1, max: 100; OPTIONAL
          GitHubPullRequestDocumentAttachmentConfigurationFieldMappings => [
            {
              DataSourceFieldName => 'MyDataSourceFieldName', # min: 1, max: 100
              IndexFieldName      => 'MyIndexFieldName',      # min: 1, max: 30
              DateFieldFormat     =>
                'MyDataSourceDateFieldFormat',    # min: 4, max: 40; OPTIONAL
            },
            ...
          ],    # min: 1, max: 100; OPTIONAL
          GitHubPullRequestDocumentConfigurationFieldMappings => [
            {
              DataSourceFieldName => 'MyDataSourceFieldName', # min: 1, max: 100
              IndexFieldName      => 'MyIndexFieldName',      # min: 1, max: 30
              DateFieldFormat     =>
                'MyDataSourceDateFieldFormat',    # min: 4, max: 40; OPTIONAL
            },
            ...
          ],    # min: 1, max: 100; OPTIONAL
          GitHubRepositoryConfigurationFieldMappings => [
            {
              DataSourceFieldName => 'MyDataSourceFieldName', # min: 1, max: 100
              IndexFieldName      => 'MyIndexFieldName',      # min: 1, max: 30
              DateFieldFormat     =>
                'MyDataSourceDateFieldFormat',    # min: 4, max: 40; OPTIONAL
            },
            ...
          ],    # min: 1, max: 100; OPTIONAL
          InclusionFileNamePatterns => [
            'MyString', ...    # min: 1, max: 2048
          ],    # OPTIONAL
          InclusionFileTypePatterns => [
            'MyString', ...    # min: 1, max: 2048
          ],    # OPTIONAL
          InclusionFolderNamePatterns => [
            'MyString', ...    # min: 1, max: 2048
          ],    # OPTIONAL
          OnPremiseConfiguration => {
            HostUrl              => 'MyUrl',                 # min: 1, max: 2048
            OrganizationName     => 'MyOrganizationName',    # min: 1, max: 60
            SslCertificateS3Path => {
              Bucket => 'MyS3BucketName',                    # min: 3, max: 63
              Key    => 'MyS3ObjectKey',                     # min: 1, max: 1024

            },

          },    # OPTIONAL
          RepositoryFilter => [
            'MyRepositoryName', ...    # min: 1, max: 64
          ],    # OPTIONAL
          SaaSConfiguration => {
            HostUrl          => 'MyUrl',                 # min: 1, max: 2048
            OrganizationName => 'MyOrganizationName',    # min: 1, max: 60

          },    # OPTIONAL
          Type             => 'SAAS',    # values: SAAS, ON_PREMISE; OPTIONAL
          UseChangeLog     => 1,         # OPTIONAL
          VpcConfiguration => {
            SecurityGroupIds => [
              'MyVpcSecurityGroupId', ...    # min: 1, max: 200
            ],    # min: 1, max: 10
            SubnetIds => [
              'MySubnetId', ...    # min: 1, max: 200
            ],    # min: 1, max: 6

          },    # OPTIONAL
        },    # OPTIONAL
        GoogleDriveConfiguration => {
          SecretArn        => 'MySecretArn',    # min: 1, max: 1284
          ExcludeMimeTypes => [
            'MyMimeType', ...                   # min: 1, max: 256
          ],    # max: 30; OPTIONAL
          ExcludeSharedDrives => [
            'MySharedDriveId', ...    # min: 1, max: 256
          ],    # max: 100; OPTIONAL
          ExcludeUserAccounts => [
            'MyUserAccount', ...    # min: 1, max: 256
          ],    # max: 100; OPTIONAL
          ExclusionPatterns => [
            'MyDataSourceInclusionsExclusionsStringsMember',
            ...    # min: 1, max: 300
          ],    # max: 250; OPTIONAL
          FieldMappings => [
            {
              DataSourceFieldName => 'MyDataSourceFieldName', # min: 1, max: 100
              IndexFieldName      => 'MyIndexFieldName',      # min: 1, max: 30
              DateFieldFormat     =>
                'MyDataSourceDateFieldFormat',    # min: 4, max: 40; OPTIONAL
            },
            ...
          ],    # min: 1, max: 100; OPTIONAL
          InclusionPatterns => [
            'MyDataSourceInclusionsExclusionsStringsMember',
            ...    # min: 1, max: 300
          ],    # max: 250; OPTIONAL
        },    # OPTIONAL
        JiraConfiguration => {
          JiraAccountUrl          => 'MyJiraAccountUrl',    # min: 1, max: 2048
          SecretArn               => 'MySecretArn',         # min: 1, max: 1284
          AttachmentFieldMappings => [
            {
              DataSourceFieldName => 'MyDataSourceFieldName', # min: 1, max: 100
              IndexFieldName      => 'MyIndexFieldName',      # min: 1, max: 30
              DateFieldFormat     =>
                'MyDataSourceDateFieldFormat',    # min: 4, max: 40; OPTIONAL
            },
            ...
          ],    # min: 1, max: 100; OPTIONAL
          CommentFieldMappings => [
            {
              DataSourceFieldName => 'MyDataSourceFieldName', # min: 1, max: 100
              IndexFieldName      => 'MyIndexFieldName',      # min: 1, max: 30
              DateFieldFormat     =>
                'MyDataSourceDateFieldFormat',    # min: 4, max: 40; OPTIONAL
            },
            ...
          ],    # min: 1, max: 100; OPTIONAL
          ExclusionPatterns => [
            'MyDataSourceInclusionsExclusionsStringsMember',
            ...    # min: 1, max: 300
          ],    # max: 250; OPTIONAL
          InclusionPatterns => [
            'MyDataSourceInclusionsExclusionsStringsMember',
            ...    # min: 1, max: 300
          ],    # max: 250; OPTIONAL
          IssueFieldMappings => [
            {
              DataSourceFieldName => 'MyDataSourceFieldName', # min: 1, max: 100
              IndexFieldName      => 'MyIndexFieldName',      # min: 1, max: 30
              DateFieldFormat     =>
                'MyDataSourceDateFieldFormat',    # min: 4, max: 40; OPTIONAL
            },
            ...
          ],    # min: 1, max: 100; OPTIONAL
          IssueSubEntityFilter => [
            'COMMENTS', ...    # values: COMMENTS, ATTACHMENTS, WORKLOGS
          ],    # max: 3; OPTIONAL
          IssueType => [
            'MyString', ...    # min: 1, max: 2048
          ],    # OPTIONAL
          Project => [
            'MyString', ...    # min: 1, max: 2048
          ],    # OPTIONAL
          ProjectFieldMappings => [
            {
              DataSourceFieldName => 'MyDataSourceFieldName', # min: 1, max: 100
              IndexFieldName      => 'MyIndexFieldName',      # min: 1, max: 30
              DateFieldFormat     =>
                'MyDataSourceDateFieldFormat',    # min: 4, max: 40; OPTIONAL
            },
            ...
          ],    # min: 1, max: 100; OPTIONAL
          Status => [
            'MyString', ...    # min: 1, max: 2048
          ],    # OPTIONAL
          UseChangeLog     => 1,    # OPTIONAL
          VpcConfiguration => {
            SecurityGroupIds => [
              'MyVpcSecurityGroupId', ...    # min: 1, max: 200
            ],    # min: 1, max: 10
            SubnetIds => [
              'MySubnetId', ...    # min: 1, max: 200
            ],    # min: 1, max: 6

          },    # OPTIONAL
          WorkLogFieldMappings => [
            {
              DataSourceFieldName => 'MyDataSourceFieldName', # min: 1, max: 100
              IndexFieldName      => 'MyIndexFieldName',      # min: 1, max: 30
              DateFieldFormat     =>
                'MyDataSourceDateFieldFormat',    # min: 4, max: 40; OPTIONAL
            },
            ...
          ],    # min: 1, max: 100; OPTIONAL
        },    # OPTIONAL
        OneDriveConfiguration => {
          OneDriveUsers => {
            OneDriveUserList => [
              'MyOneDriveUser', ...    # min: 1, max: 256
            ],    # min: 1, max: 100; OPTIONAL
            OneDriveUserS3Path => {
              Bucket => 'MyS3BucketName',    # min: 3, max: 63
              Key    => 'MyS3ObjectKey',     # min: 1, max: 1024

            },
          },
          SecretArn          => 'MySecretArn',       # min: 1, max: 1284
          TenantDomain       => 'MyTenantDomain',    # min: 1, max: 256
          DisableLocalGroups => 1,                   # OPTIONAL
          ExclusionPatterns  => [
            'MyDataSourceInclusionsExclusionsStringsMember',
            ...                                      # min: 1, max: 300
          ],    # max: 250; OPTIONAL
          FieldMappings => [
            {
              DataSourceFieldName => 'MyDataSourceFieldName', # min: 1, max: 100
              IndexFieldName      => 'MyIndexFieldName',      # min: 1, max: 30
              DateFieldFormat     =>
                'MyDataSourceDateFieldFormat',    # min: 4, max: 40; OPTIONAL
            },
            ...
          ],    # min: 1, max: 100; OPTIONAL
          InclusionPatterns => [
            'MyDataSourceInclusionsExclusionsStringsMember',
            ...    # min: 1, max: 300
          ],    # max: 250; OPTIONAL
        },    # OPTIONAL
        QuipConfiguration => {
          Domain                  => 'MyDomain',       # min: 1, max: 63
          SecretArn               => 'MySecretArn',    # min: 1, max: 1284
          AttachmentFieldMappings => [
            {
              DataSourceFieldName => 'MyDataSourceFieldName', # min: 1, max: 100
              IndexFieldName      => 'MyIndexFieldName',      # min: 1, max: 30
              DateFieldFormat     =>
                'MyDataSourceDateFieldFormat',    # min: 4, max: 40; OPTIONAL
            },
            ...
          ],    # min: 1, max: 100; OPTIONAL
          CrawlAttachments  => 1,    # OPTIONAL
          CrawlChatRooms    => 1,    # OPTIONAL
          CrawlFileComments => 1,    # OPTIONAL
          ExclusionPatterns => [
            'MyDataSourceInclusionsExclusionsStringsMember',
            ...                      # min: 1, max: 300
          ],    # max: 250; OPTIONAL
          FolderIds => [
            'MyFolderId', ...    # min: 1, max: 500
          ],    # OPTIONAL
          InclusionPatterns => [
            'MyDataSourceInclusionsExclusionsStringsMember',
            ...    # min: 1, max: 300
          ],    # max: 250; OPTIONAL
          MessageFieldMappings => [
            {
              DataSourceFieldName => 'MyDataSourceFieldName', # min: 1, max: 100
              IndexFieldName      => 'MyIndexFieldName',      # min: 1, max: 30
              DateFieldFormat     =>
                'MyDataSourceDateFieldFormat',    # min: 4, max: 40; OPTIONAL
            },
            ...
          ],    # min: 1, max: 100; OPTIONAL
          ThreadFieldMappings => [
            {
              DataSourceFieldName => 'MyDataSourceFieldName', # min: 1, max: 100
              IndexFieldName      => 'MyIndexFieldName',      # min: 1, max: 30
              DateFieldFormat     =>
                'MyDataSourceDateFieldFormat',    # min: 4, max: 40; OPTIONAL
            },
            ...
          ],    # min: 1, max: 100; OPTIONAL
          VpcConfiguration => {
            SecurityGroupIds => [
              'MyVpcSecurityGroupId', ...    # min: 1, max: 200
            ],    # min: 1, max: 10
            SubnetIds => [
              'MySubnetId', ...    # min: 1, max: 200
            ],    # min: 1, max: 6

          },    # OPTIONAL
        },    # OPTIONAL
        S3Configuration => {
          BucketName                     => 'MyS3BucketName',  # min: 3, max: 63
          AccessControlListConfiguration => {
            KeyPath => 'MyS3ObjectKey',    # min: 1, max: 1024
          },    # OPTIONAL
          DocumentsMetadataConfiguration => {
            S3Prefix => 'MyS3ObjectKey',    # min: 1, max: 1024
          },    # OPTIONAL
          ExclusionPatterns => [
            'MyDataSourceInclusionsExclusionsStringsMember',
            ...    # min: 1, max: 300
          ],    # max: 250; OPTIONAL
          InclusionPatterns => [
            'MyDataSourceInclusionsExclusionsStringsMember',
            ...    # min: 1, max: 300
          ],    # max: 250; OPTIONAL
          InclusionPrefixes => [
            'MyDataSourceInclusionsExclusionsStringsMember',
            ...    # min: 1, max: 300
          ],    # max: 250; OPTIONAL
        },    # OPTIONAL
        SalesforceConfiguration => {
          SecretArn                => 'MySecretArn',    # min: 1, max: 1284
          ServerUrl                => 'MyUrl',          # min: 1, max: 2048
          ChatterFeedConfiguration => {
            DocumentDataFieldName => 'MyDataSourceFieldName', # min: 1, max: 100
            DocumentTitleFieldName =>
              'MyDataSourceFieldName',                        # min: 1, max: 100
            FieldMappings => [
              {
                DataSourceFieldName =>
                  'MyDataSourceFieldName',                    # min: 1, max: 100
                IndexFieldName  => 'MyIndexFieldName',        # min: 1, max: 30
                DateFieldFormat =>
                  'MyDataSourceDateFieldFormat',    # min: 4, max: 40; OPTIONAL
              },
              ...
            ],    # min: 1, max: 100; OPTIONAL
            IncludeFilterTypes => [
              'ACTIVE_USER', ...    # values: ACTIVE_USER, STANDARD_USER
            ],    # min: 1, max: 2; OPTIONAL
          },    # OPTIONAL
          CrawlAttachments              => 1,    # OPTIONAL
          ExcludeAttachmentFilePatterns => [
            'MyDataSourceInclusionsExclusionsStringsMember',
            ...                                  # min: 1, max: 300
          ],    # max: 250; OPTIONAL
          IncludeAttachmentFilePatterns => [
            'MyDataSourceInclusionsExclusionsStringsMember',
            ...    # min: 1, max: 300
          ],    # max: 250; OPTIONAL
          KnowledgeArticleConfiguration => {
            IncludedStates => [
              'DRAFT', ...    # values: DRAFT, PUBLISHED, ARCHIVED
            ],    # min: 1, max: 3
            CustomKnowledgeArticleTypeConfigurations => [
              {
                DocumentDataFieldName =>
                  'MyDataSourceFieldName',    # min: 1, max: 100
                Name => 'MySalesforceCustomKnowledgeArticleTypeName'
                ,                             # min: 1, max: 100
                DocumentTitleFieldName =>
                  'MyDataSourceFieldName',    # min: 1, max: 100
                FieldMappings => [
                  {
                    DataSourceFieldName =>
                      'MyDataSourceFieldName',    # min: 1, max: 100
                    IndexFieldName  => 'MyIndexFieldName',    # min: 1, max: 30
                    DateFieldFormat =>
                      'MyDataSourceDateFieldFormat', # min: 4, max: 40; OPTIONAL
                  },
                  ...
                ],    # min: 1, max: 100; OPTIONAL
              },
              ...
            ],    # min: 1, max: 10; OPTIONAL
            StandardKnowledgeArticleTypeConfiguration => {
              DocumentDataFieldName =>
                'MyDataSourceFieldName',    # min: 1, max: 100
              DocumentTitleFieldName =>
                'MyDataSourceFieldName',    # min: 1, max: 100
              FieldMappings => [
                {
                  DataSourceFieldName =>
                    'MyDataSourceFieldName',    # min: 1, max: 100
                  IndexFieldName  => 'MyIndexFieldName',    # min: 1, max: 30
                  DateFieldFormat =>
                    'MyDataSourceDateFieldFormat',   # min: 4, max: 40; OPTIONAL
                },
                ...
              ],    # min: 1, max: 100; OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          StandardObjectAttachmentConfiguration => {
            DocumentTitleFieldName =>
              'MyDataSourceFieldName',    # min: 1, max: 100
            FieldMappings => [
              {
                DataSourceFieldName =>
                  'MyDataSourceFieldName',    # min: 1, max: 100
                IndexFieldName  => 'MyIndexFieldName',    # min: 1, max: 30
                DateFieldFormat =>
                  'MyDataSourceDateFieldFormat',    # min: 4, max: 40; OPTIONAL
              },
              ...
            ],    # min: 1, max: 100; OPTIONAL
          },    # OPTIONAL
          StandardObjectConfigurations => [
            {
              DocumentDataFieldName =>
                'MyDataSourceFieldName',    # min: 1, max: 100
              Name => 'ACCOUNT'
              , # values: ACCOUNT, CAMPAIGN, CASE, CONTACT, CONTRACT, DOCUMENT, GROUP, IDEA, LEAD, OPPORTUNITY, PARTNER, PRICEBOOK, PRODUCT, PROFILE, SOLUTION, TASK, USER
              DocumentTitleFieldName =>
                'MyDataSourceFieldName',    # min: 1, max: 100
              FieldMappings => [
                {
                  DataSourceFieldName =>
                    'MyDataSourceFieldName',    # min: 1, max: 100
                  IndexFieldName  => 'MyIndexFieldName',    # min: 1, max: 30
                  DateFieldFormat =>
                    'MyDataSourceDateFieldFormat',   # min: 4, max: 40; OPTIONAL
                },
                ...
              ],    # min: 1, max: 100; OPTIONAL
            },
            ...
          ],    # min: 1, max: 17; OPTIONAL
        },    # OPTIONAL
        ServiceNowConfiguration => {
          HostUrl                => 'MyServiceNowHostUrl',   # min: 1, max: 2048
          SecretArn              => 'MySecretArn',           # min: 1, max: 1284
          ServiceNowBuildVersion => 'LONDON',    # values: LONDON, OTHERS
          AuthenticationType     =>
            'HTTP_BASIC',    # values: HTTP_BASIC, OAUTH2; OPTIONAL
          KnowledgeArticleConfiguration => {
            DocumentDataFieldName => 'MyDataSourceFieldName', # min: 1, max: 100
            CrawlAttachments      => 1,                       # OPTIONAL
            DocumentTitleFieldName =>
              'MyDataSourceFieldName',                        # min: 1, max: 100
            ExcludeAttachmentFilePatterns => [
              'MyDataSourceInclusionsExclusionsStringsMember',
              ...                                             # min: 1, max: 300
            ],    # max: 250; OPTIONAL
            FieldMappings => [
              {
                DataSourceFieldName =>
                  'MyDataSourceFieldName',    # min: 1, max: 100
                IndexFieldName  => 'MyIndexFieldName',    # min: 1, max: 30
                DateFieldFormat =>
                  'MyDataSourceDateFieldFormat',    # min: 4, max: 40; OPTIONAL
              },
              ...
            ],    # min: 1, max: 100; OPTIONAL
            FilterQuery => 'MyServiceNowKnowledgeArticleFilterQuery'
            ,     # min: 1, max: 2048; OPTIONAL
            IncludeAttachmentFilePatterns => [
              'MyDataSourceInclusionsExclusionsStringsMember',
              ...    # min: 1, max: 300
            ],    # max: 250; OPTIONAL
          },    # OPTIONAL
          ServiceCatalogConfiguration => {
            DocumentDataFieldName => 'MyDataSourceFieldName', # min: 1, max: 100
            CrawlAttachments      => 1,                       # OPTIONAL
            DocumentTitleFieldName =>
              'MyDataSourceFieldName',                        # min: 1, max: 100
            ExcludeAttachmentFilePatterns => [
              'MyDataSourceInclusionsExclusionsStringsMember',
              ...                                             # min: 1, max: 300
            ],    # max: 250; OPTIONAL
            FieldMappings => [
              {
                DataSourceFieldName =>
                  'MyDataSourceFieldName',    # min: 1, max: 100
                IndexFieldName  => 'MyIndexFieldName',    # min: 1, max: 30
                DateFieldFormat =>
                  'MyDataSourceDateFieldFormat',    # min: 4, max: 40; OPTIONAL
              },
              ...
            ],    # min: 1, max: 100; OPTIONAL
            IncludeAttachmentFilePatterns => [
              'MyDataSourceInclusionsExclusionsStringsMember',
              ...    # min: 1, max: 300
            ],    # max: 250; OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        SharePointConfiguration => {
          SecretArn         => 'MySecretArn',      # min: 1, max: 1284
          SharePointVersion => 'SHAREPOINT_2013'
          , # values: SHAREPOINT_2013, SHAREPOINT_2016, SHAREPOINT_ONLINE, SHAREPOINT_2019
          Urls => [
            'MyUrl', ...    # min: 1, max: 2048
          ],    # min: 1, max: 100
          AuthenticationType =>
            'HTTP_BASIC',    # values: HTTP_BASIC, OAUTH2; OPTIONAL
          CrawlAttachments       => 1,                        # OPTIONAL
          DisableLocalGroups     => 1,                        # OPTIONAL
          DocumentTitleFieldName => 'MyDataSourceFieldName',  # min: 1, max: 100
          ExclusionPatterns      => [
            'MyDataSourceInclusionsExclusionsStringsMember',
            ...                                               # min: 1, max: 300
          ],    # max: 250; OPTIONAL
          FieldMappings => [
            {
              DataSourceFieldName => 'MyDataSourceFieldName', # min: 1, max: 100
              IndexFieldName      => 'MyIndexFieldName',      # min: 1, max: 30
              DateFieldFormat     =>
                'MyDataSourceDateFieldFormat',    # min: 4, max: 40; OPTIONAL
            },
            ...
          ],    # min: 1, max: 100; OPTIONAL
          InclusionPatterns => [
            'MyDataSourceInclusionsExclusionsStringsMember',
            ...    # min: 1, max: 300
          ],    # max: 250; OPTIONAL
          ProxyConfiguration => {
            Host        => 'MyHost',         # min: 1, max: 253
            Port        => 1,                # min: 1, max: 65535
            Credentials => 'MySecretArn',    # min: 1, max: 1284
          },    # OPTIONAL
          SslCertificateS3Path => {
            Bucket => 'MyS3BucketName',    # min: 3, max: 63
            Key    => 'MyS3ObjectKey',     # min: 1, max: 1024

          },
          UseChangeLog     => 1,           # OPTIONAL
          VpcConfiguration => {
            SecurityGroupIds => [
              'MyVpcSecurityGroupId', ...    # min: 1, max: 200
            ],    # min: 1, max: 10
            SubnetIds => [
              'MySubnetId', ...    # min: 1, max: 200
            ],    # min: 1, max: 6

          },    # OPTIONAL
        },    # OPTIONAL
        SlackConfiguration => {
          SecretArn       => 'MySecretArn',         # min: 1, max: 1284
          SinceCrawlDate  => 'MySinceCrawlDate',    # min: 10, max: 10
          SlackEntityList => [
            'PUBLIC_CHANNEL',
            ... # values: PUBLIC_CHANNEL, PRIVATE_CHANNEL, GROUP_MESSAGE, DIRECT_MESSAGE
          ],    # min: 1, max: 4
          TeamId            => 'MyTeamId',    # min: 1, max: 64
          CrawlBotMessage   => 1,             # OPTIONAL
          ExcludeArchived   => 1,             # OPTIONAL
          ExclusionPatterns => [
            'MyDataSourceInclusionsExclusionsStringsMember',
            ...                               # min: 1, max: 300
          ],    # max: 250; OPTIONAL
          FieldMappings => [
            {
              DataSourceFieldName => 'MyDataSourceFieldName', # min: 1, max: 100
              IndexFieldName      => 'MyIndexFieldName',      # min: 1, max: 30
              DateFieldFormat     =>
                'MyDataSourceDateFieldFormat',    # min: 4, max: 40; OPTIONAL
            },
            ...
          ],    # min: 1, max: 100; OPTIONAL
          InclusionPatterns => [
            'MyDataSourceInclusionsExclusionsStringsMember',
            ...    # min: 1, max: 300
          ],    # max: 250; OPTIONAL
          LookBackPeriod       => 1,    # max: 168; OPTIONAL
          PrivateChannelFilter => [
            'MyString', ...             # min: 1, max: 2048
          ],    # OPTIONAL
          PublicChannelFilter => [
            'MyString', ...    # min: 1, max: 2048
          ],    # OPTIONAL
          UseChangeLog     => 1,    # OPTIONAL
          VpcConfiguration => {
            SecurityGroupIds => [
              'MyVpcSecurityGroupId', ...    # min: 1, max: 200
            ],    # min: 1, max: 10
            SubnetIds => [
              'MySubnetId', ...    # min: 1, max: 200
            ],    # min: 1, max: 6

          },    # OPTIONAL
        },    # OPTIONAL
        TemplateConfiguration => {
          Template => {

          },    # OPTIONAL
        },    # OPTIONAL
        WebCrawlerConfiguration => {
          Urls => {
            SeedUrlConfiguration => {
              SeedUrls => [
                'MySeedUrl', ...    # min: 1, max: 2048
              ],    # max: 100
              WebCrawlerMode => 'HOST_ONLY'
              ,     # values: HOST_ONLY, SUBDOMAINS, EVERYTHING; OPTIONAL
            },    # OPTIONAL
            SiteMapsConfiguration => {
              SiteMaps => [
                'MySiteMap', ...    # min: 1, max: 2048
              ],    # max: 3

            },    # OPTIONAL
          },
          AuthenticationConfiguration => {
            BasicAuthentication => [
              {
                Credentials => 'MySecretArn',    # min: 1, max: 1284
                Host        => 'MyHost',         # min: 1, max: 253
                Port        => 1,                # min: 1, max: 65535

              },
              ...
            ],    # max: 10; OPTIONAL
          },    # OPTIONAL
          CrawlDepth                       => 1,    # max: 10; OPTIONAL
          MaxContentSizePerPageInMegaBytes =>
            1.0,    # min: 1e-06, max: 50; OPTIONAL
          MaxLinksPerPage           => 1,    # min: 1, max: 1000; OPTIONAL
          MaxUrlsPerMinuteCrawlRate => 1,    # min: 1, max: 300; OPTIONAL
          ProxyConfiguration        => {
            Host        => 'MyHost',         # min: 1, max: 253
            Port        => 1,                # min: 1, max: 65535
            Credentials => 'MySecretArn',    # min: 1, max: 1284
          },    # OPTIONAL
          UrlExclusionPatterns => [
            'MyDataSourceInclusionsExclusionsStringsMember',
            ...    # min: 1, max: 300
          ],    # max: 250; OPTIONAL
          UrlInclusionPatterns => [
            'MyDataSourceInclusionsExclusionsStringsMember',
            ...    # min: 1, max: 300
          ],    # max: 250; OPTIONAL
        },    # OPTIONAL
        WorkDocsConfiguration => {
          OrganizationId    => 'MyOrganizationId',    # min: 12, max: 12
          CrawlComments     => 1,                     # OPTIONAL
          ExclusionPatterns => [
            'MyDataSourceInclusionsExclusionsStringsMember',
            ...                                       # min: 1, max: 300
          ],    # max: 250; OPTIONAL
          FieldMappings => [
            {
              DataSourceFieldName => 'MyDataSourceFieldName', # min: 1, max: 100
              IndexFieldName      => 'MyIndexFieldName',      # min: 1, max: 30
              DateFieldFormat     =>
                'MyDataSourceDateFieldFormat',    # min: 4, max: 40; OPTIONAL
            },
            ...
          ],    # min: 1, max: 100; OPTIONAL
          InclusionPatterns => [
            'MyDataSourceInclusionsExclusionsStringsMember',
            ...    # min: 1, max: 300
          ],    # max: 250; OPTIONAL
          UseChangeLog => 1,    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      CustomDocumentEnrichmentConfiguration => {
        InlineConfigurations => [
          {
            Condition => {
              ConditionDocumentAttributeKey =>
                'MyDocumentAttributeKey',    # min: 1, max: 200
              Operator => 'GreaterThan'
              , # values: GreaterThan, GreaterThanOrEquals, LessThan, LessThanOrEquals, Equals, NotEquals, Contains, NotContains, Exists, NotExists, BeginsWith
              ConditionOnValue => {
                DateValue       => '1970-01-01T01:00:00',    # OPTIONAL
                LongValue       => 1,                        # OPTIONAL
                StringListValue => [
                  'MyString', ...                            # min: 1, max: 2048
                ],    # OPTIONAL
                StringValue => 'MyDocumentAttributeStringValue'
                ,     # min: 1, max: 2048; OPTIONAL
              },    # OPTIONAL
            },    # OPTIONAL
            DocumentContentDeletion => 1,    # OPTIONAL
            Target                  => {
              TargetDocumentAttributeKey =>
                'MyDocumentAttributeKey',    # min: 1, max: 200
              TargetDocumentAttributeValue => {
                DateValue       => '1970-01-01T01:00:00',    # OPTIONAL
                LongValue       => 1,                        # OPTIONAL
                StringListValue => [
                  'MyString', ...                            # min: 1, max: 2048
                ],    # OPTIONAL
                StringValue => 'MyDocumentAttributeStringValue'
                ,     # min: 1, max: 2048; OPTIONAL
              },    # OPTIONAL
              TargetDocumentAttributeValueDeletion => 1,    # OPTIONAL
            },    # OPTIONAL
          },
          ...
        ],    # max: 100; OPTIONAL
        PostExtractionHookConfiguration => {
          LambdaArn           => 'MyLambdaArn',       # min: 1, max: 2048
          S3Bucket            => 'MyS3BucketName',    # min: 3, max: 63
          InvocationCondition => {
            ConditionDocumentAttributeKey =>
              'MyDocumentAttributeKey',               # min: 1, max: 200
            Operator => 'GreaterThan'
            , # values: GreaterThan, GreaterThanOrEquals, LessThan, LessThanOrEquals, Equals, NotEquals, Contains, NotContains, Exists, NotExists, BeginsWith
            ConditionOnValue => {
              DateValue       => '1970-01-01T01:00:00',    # OPTIONAL
              LongValue       => 1,                        # OPTIONAL
              StringListValue => [
                'MyString', ...                            # min: 1, max: 2048
              ],    # OPTIONAL
              StringValue =>
                'MyDocumentAttributeStringValue',  # min: 1, max: 2048; OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        PreExtractionHookConfiguration => {
          LambdaArn           => 'MyLambdaArn',       # min: 1, max: 2048
          S3Bucket            => 'MyS3BucketName',    # min: 3, max: 63
          InvocationCondition => {
            ConditionDocumentAttributeKey =>
              'MyDocumentAttributeKey',               # min: 1, max: 200
            Operator => 'GreaterThan'
            , # values: GreaterThan, GreaterThanOrEquals, LessThan, LessThanOrEquals, Equals, NotEquals, Contains, NotContains, Exists, NotExists, BeginsWith
            ConditionOnValue => {
              DateValue       => '1970-01-01T01:00:00',    # OPTIONAL
              LongValue       => 1,                        # OPTIONAL
              StringListValue => [
                'MyString', ...                            # min: 1, max: 2048
              ],    # OPTIONAL
              StringValue =>
                'MyDocumentAttributeStringValue',  # min: 1, max: 2048; OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        RoleArn => 'MyRoleArn',    # max: 1284; OPTIONAL
      },    # OPTIONAL
      Description      => 'MyDescription',       # OPTIONAL
      LanguageCode     => 'MyLanguageCode',      # OPTIONAL
      Name             => 'MyDataSourceName',    # OPTIONAL
      RoleArn          => 'MyRoleArn',           # OPTIONAL
      Schedule         => 'MyScanSchedule',      # OPTIONAL
      VpcConfiguration => {
        SecurityGroupIds => [
          'MyVpcSecurityGroupId', ...            # min: 1, max: 200
        ],    # min: 1, max: 10
        SubnetIds => [
          'MySubnetId', ...    # min: 1, max: 200
        ],    # min: 1, max: 6

      },    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kendra/UpdateDataSource>

=head1 ATTRIBUTES


=head2 Configuration => L<Paws::Kendra::DataSourceConfiguration>

Configuration information you want to update for the data source
connector.



=head2 CustomDocumentEnrichmentConfiguration => L<Paws::Kendra::CustomDocumentEnrichmentConfiguration>

Configuration information you want to update for altering document
metadata and content during the document ingestion process.

For more information on how to create, modify and delete document
metadata, or make other content alterations when you ingest documents
into Amazon Kendra, see Customizing document metadata during the
ingestion process
(https://docs.aws.amazon.com/kendra/latest/dg/custom-document-enrichment.html).



=head2 Description => Str

A new description for the data source connector.



=head2 B<REQUIRED> Id => Str

The identifier of the data source connector you want to update.



=head2 B<REQUIRED> IndexId => Str

The identifier of the index used with the data source connector.



=head2 LanguageCode => Str

The code for a language you want to update for the data source
connector. This allows you to support a language for all documents when
updating the data source. English is supported by default. For more
information on supported languages, including their codes, see Adding
documents in languages other than English
(https://docs.aws.amazon.com/kendra/latest/dg/in-adding-languages.html).



=head2 Name => Str

A new name for the data source connector.



=head2 RoleArn => Str

The Amazon Resource Name (ARN) of an IAM role with permission to access
the data source and required resources. For more information, see IAM
roles for Amazon Kendra
(https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html).



=head2 Schedule => Str

The sync schedule you want to update for the data source connector.



=head2 VpcConfiguration => L<Paws::Kendra::DataSourceVpcConfiguration>

Configuration information for an Amazon Virtual Private Cloud to
connect to your data source. For more information, see Configuring a
VPC
(https://docs.aws.amazon.com/kendra/latest/dg/vpc-configuration.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDataSource in L<Paws::Kendra>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

