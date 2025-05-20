
package Paws::Kendra::UpdateIndex;
  use Moose;
  has CapacityUnits => (is => 'ro', isa => 'Paws::Kendra::CapacityUnitsConfiguration');
  has Description => (is => 'ro', isa => 'Str');
  has DocumentMetadataConfigurationUpdates => (is => 'ro', isa => 'ArrayRef[Paws::Kendra::DocumentMetadataConfiguration]');
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str');
  has RoleArn => (is => 'ro', isa => 'Str');
  has UserContextPolicy => (is => 'ro', isa => 'Str');
  has UserGroupResolutionConfiguration => (is => 'ro', isa => 'Paws::Kendra::UserGroupResolutionConfiguration');
  has UserTokenConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::Kendra::UserTokenConfiguration]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateIndex');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::UpdateIndex - Arguments for method UpdateIndex on L<Paws::Kendra>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateIndex on the
L<AWSKendraFrontendService|Paws::Kendra> service. Use the attributes of this class
as arguments to method UpdateIndex.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateIndex.

=head1 SYNOPSIS

    my $kendra = Paws->service('Kendra');
    $kendra->UpdateIndex(
      Id            => 'MyIndexId',
      CapacityUnits => {
        QueryCapacityUnits   => 1,
        StorageCapacityUnits => 1,

      },    # OPTIONAL
      Description                          => 'MyDescription',    # OPTIONAL
      DocumentMetadataConfigurationUpdates => [
        {
          Name => 'MyDocumentMetadataConfigurationName',    # min: 1, max: 30
          Type => 'STRING_VALUE'
          ,    # values: STRING_VALUE, STRING_LIST_VALUE, LONG_VALUE, DATE_VALUE
          Relevance => {
            Duration   => 'MyDuration',    # min: 1, max: 10; OPTIONAL
            Freshness  => 1,               # OPTIONAL
            Importance => 1,               # min: 1, max: 10; OPTIONAL
            RankOrder  => 'ASCENDING', # values: ASCENDING, DESCENDING; OPTIONAL
            ValueImportanceMap => {
              'MyValueImportanceMapKey' =>
                1,    # key: min: 1, max: 50, value: min: 1, max: 10; OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          Search => {
            Displayable => 1,    # OPTIONAL
            Facetable   => 1,    # OPTIONAL
            Searchable  => 1,    # OPTIONAL
            Sortable    => 1,    # OPTIONAL
          },    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      Name                             => 'MyIndexName',         # OPTIONAL
      RoleArn                          => 'MyRoleArn',           # OPTIONAL
      UserContextPolicy                => 'ATTRIBUTE_FILTER',    # OPTIONAL
      UserGroupResolutionConfiguration => {
        UserGroupResolutionMode => 'AWS_SSO',    # values: AWS_SSO, NONE

      },    # OPTIONAL
      UserTokenConfigurations => [
        {
          JsonTokenTypeConfiguration => {
            GroupAttributeField    => 'MyString',    # min: 1, max: 2048
            UserNameAttributeField => 'MyString',    # min: 1, max: 2048

          },    # OPTIONAL
          JwtTokenTypeConfiguration => {
            KeyLocation         => 'URL',          # values: URL, SECRET_MANAGER
            ClaimRegex          => 'MyClaimRegex', # min: 1, max: 100; OPTIONAL
            GroupAttributeField =>
              'MyGroupAttributeField',             # min: 1, max: 100; OPTIONAL
            Issuer                 => 'MyIssuer',  # min: 1, max: 65; OPTIONAL
            SecretManagerArn       => 'MyRoleArn', # max: 1284
            URL                    => 'MyUrl',     # min: 1, max: 2048; OPTIONAL
            UserNameAttributeField =>
              'MyUserNameAttributeField',          # min: 1, max: 100; OPTIONAL
          },    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kendra/UpdateIndex>

=head1 ATTRIBUTES


=head2 CapacityUnits => L<Paws::Kendra::CapacityUnitsConfiguration>

Sets the number of additional document storage and query capacity units
that should be used by the index. You can change the capacity of the
index up to 5 times per day, or make 5 API calls.

If you are using extra storage units, you can't reduce the storage
capacity below what is required to meet the storage needs for your
index.



=head2 Description => Str

A new description for the index.



=head2 DocumentMetadataConfigurationUpdates => ArrayRef[L<Paws::Kendra::DocumentMetadataConfiguration>]

The document metadata configuration you want to update for the index.
Document metadata are fields or attributes associated with your
documents. For example, the company department name associated with
each document.



=head2 B<REQUIRED> Id => Str

The identifier of the index you want to update.



=head2 Name => Str

A new name for the index.



=head2 RoleArn => Str

An Identity and Access Management (IAM) role that gives Amazon Kendra
permission to access Amazon CloudWatch logs and metrics.



=head2 UserContextPolicy => Str

The user context policy.

If you're using an Amazon Kendra Gen AI Enterprise Edition index, you
can only use C<ATTRIBUTE_FILTER> to filter search results by user
context. If you're using an Amazon Kendra Gen AI Enterprise Edition
index and you try to use C<USER_TOKEN> to configure user context
policy, Amazon Kendra returns a C<ValidationException> error.

Valid values are: C<"ATTRIBUTE_FILTER">, C<"USER_TOKEN">

=head2 UserGroupResolutionConfiguration => L<Paws::Kendra::UserGroupResolutionConfiguration>

Gets users and groups from IAM Identity Center identity source. To
configure this, see UserGroupResolutionConfiguration
(https://docs.aws.amazon.com/kendra/latest/dg/API_UserGroupResolutionConfiguration.html).
This is useful for user context filtering, where search results are
filtered based on the user or their group access to documents.

If you're using an Amazon Kendra Gen AI Enterprise Edition index,
C<UserGroupResolutionConfiguration> isn't supported.



=head2 UserTokenConfigurations => ArrayRef[L<Paws::Kendra::UserTokenConfiguration>]

The user token configuration.

If you're using an Amazon Kendra Gen AI Enterprise Edition index and
you try to use C<UserTokenConfigurations> to configure user context
policy, Amazon Kendra returns a C<ValidationException> error.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateIndex in L<Paws::Kendra>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

