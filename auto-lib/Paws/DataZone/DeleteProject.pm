
package Paws::DataZone::DeleteProject;
  use Moose;
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has Identifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'identifier', required => 1);
  has SkipDeletionCheck => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'skipDeletionCheck');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteProject');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/projects/{identifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::DeleteProjectOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::DeleteProject - Arguments for method DeleteProject on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteProject on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method DeleteProject.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteProject.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $DeleteProjectOutput = $datazone->DeleteProject(
      DomainIdentifier  => 'MyDomainId',
      Identifier        => 'MyProjectId',
      SkipDeletionCheck => 1,               # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/DeleteProject>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainIdentifier => Str

The ID of the Amazon DataZone domain in which the project is deleted.



=head2 B<REQUIRED> Identifier => Str

The identifier of the project that is to be deleted.



=head2 SkipDeletionCheck => Bool

Specifies the optional flag to delete all child entities within the
project.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteProject in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

