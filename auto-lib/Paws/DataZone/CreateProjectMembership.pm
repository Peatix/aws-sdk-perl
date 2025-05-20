
package Paws::DataZone::CreateProjectMembership;
  use Moose;
  has Designation => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'designation', required => 1);
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has Member => (is => 'ro', isa => 'Paws::DataZone::Member', traits => ['NameInRequest'], request_name => 'member', required => 1);
  has ProjectIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'projectIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateProjectMembership');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/projects/{projectIdentifier}/createMembership');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::CreateProjectMembershipOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::CreateProjectMembership - Arguments for method CreateProjectMembership on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateProjectMembership on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method CreateProjectMembership.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateProjectMembership.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $CreateProjectMembershipOutput = $datazone->CreateProjectMembership(
      Designation      => 'PROJECT_OWNER',
      DomainIdentifier => 'MyDomainId',
      Member           => {
        GroupIdentifier => 'MyString',    # OPTIONAL
        UserIdentifier  => 'MyString',    # OPTIONAL
      },
      ProjectIdentifier => 'MyProjectId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/CreateProjectMembership>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Designation => Str

The designation of the project membership.

Valid values are: C<"PROJECT_OWNER">, C<"PROJECT_CONTRIBUTOR">, C<"PROJECT_CATALOG_VIEWER">, C<"PROJECT_CATALOG_CONSUMER">, C<"PROJECT_CATALOG_STEWARD">

=head2 B<REQUIRED> DomainIdentifier => Str

The ID of the Amazon DataZone domain in which project membership is
created.



=head2 B<REQUIRED> Member => L<Paws::DataZone::Member>

The project member whose project membership was created.



=head2 B<REQUIRED> ProjectIdentifier => Str

The ID of the project for which this project membership was created.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateProjectMembership in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

