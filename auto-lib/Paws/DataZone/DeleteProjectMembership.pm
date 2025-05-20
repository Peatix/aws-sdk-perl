
package Paws::DataZone::DeleteProjectMembership;
  use Moose;
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has Member => (is => 'ro', isa => 'Paws::DataZone::Member', traits => ['NameInRequest'], request_name => 'member', required => 1);
  has ProjectIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'projectIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteProjectMembership');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/projects/{projectIdentifier}/deleteMembership');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::DeleteProjectMembershipOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::DeleteProjectMembership - Arguments for method DeleteProjectMembership on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteProjectMembership on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method DeleteProjectMembership.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteProjectMembership.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $DeleteProjectMembershipOutput = $datazone->DeleteProjectMembership(
      DomainIdentifier => 'MyDomainId',
      Member           => {
        GroupIdentifier => 'MyString',    # OPTIONAL
        UserIdentifier  => 'MyString',    # OPTIONAL
      },
      ProjectIdentifier => 'MyProjectId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/DeleteProjectMembership>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainIdentifier => Str

The ID of the Amazon DataZone domain where project membership is
deleted.



=head2 B<REQUIRED> Member => L<Paws::DataZone::Member>

The project member whose project membership is deleted.



=head2 B<REQUIRED> ProjectIdentifier => Str

The ID of the Amazon DataZone project the membership to which is
deleted.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteProjectMembership in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

