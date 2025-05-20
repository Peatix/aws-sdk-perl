
package Paws::Kendra::UpdateAccessControlConfiguration;
  use Moose;
  has AccessControlList => (is => 'ro', isa => 'ArrayRef[Paws::Kendra::Principal]');
  has Description => (is => 'ro', isa => 'Str');
  has HierarchicalAccessControlList => (is => 'ro', isa => 'ArrayRef[Paws::Kendra::HierarchicalPrincipal]');
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has IndexId => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateAccessControlConfiguration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Kendra::UpdateAccessControlConfigurationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::UpdateAccessControlConfiguration - Arguments for method UpdateAccessControlConfiguration on L<Paws::Kendra>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateAccessControlConfiguration on the
L<AWSKendraFrontendService|Paws::Kendra> service. Use the attributes of this class
as arguments to method UpdateAccessControlConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateAccessControlConfiguration.

=head1 SYNOPSIS

    my $kendra = Paws->service('Kendra');
    my $UpdateAccessControlConfigurationResponse =
      $kendra->UpdateAccessControlConfiguration(
      Id                => 'MyAccessControlConfigurationId',
      IndexId           => 'MyIndexId',
      AccessControlList => [
        {
          Access       => 'ALLOW',              # values: ALLOW, DENY
          Name         => 'MyPrincipalName',    # min: 1, max: 200
          Type         => 'USER',               # values: USER, GROUP
          DataSourceId => 'MyDataSourceId',     # min: 1, max: 100; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      Description                   => 'MyDescription',    # OPTIONAL
      HierarchicalAccessControlList => [
        {
          PrincipalList => [
            {
              Access       => 'ALLOW',              # values: ALLOW, DENY
              Name         => 'MyPrincipalName',    # min: 1, max: 200
              Type         => 'USER',               # values: USER, GROUP
              DataSourceId => 'MyDataSourceId',     # min: 1, max: 100; OPTIONAL
            },
            ...
          ],

        },
        ...
      ],    # OPTIONAL
      Name => 'MyAccessControlConfigurationName',    # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kendra/UpdateAccessControlConfiguration>

=head1 ATTRIBUTES


=head2 AccessControlList => ArrayRef[L<Paws::Kendra::Principal>]

Information you want to update on principals (users and/or groups) and
which documents they should have access to. This is useful for user
context filtering, where search results are filtered based on the user
or their group access to documents.



=head2 Description => Str

A new description for the access control configuration.



=head2 HierarchicalAccessControlList => ArrayRef[L<Paws::Kendra::HierarchicalPrincipal>]

The updated list of principal
(https://docs.aws.amazon.com/kendra/latest/dg/API_Principal.html) lists
that define the hierarchy for which documents users should have access
to.



=head2 B<REQUIRED> Id => Str

The identifier of the access control configuration you want to update.



=head2 B<REQUIRED> IndexId => Str

The identifier of the index for an access control configuration.



=head2 Name => Str

A new name for the access control configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateAccessControlConfiguration in L<Paws::Kendra>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

