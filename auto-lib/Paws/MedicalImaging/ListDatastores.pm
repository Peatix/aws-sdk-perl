
package Paws::MedicalImaging::ListDatastores;
  use Moose;
  has DatastoreStatus => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'datastoreStatus');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDatastores');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/datastore');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MedicalImaging::ListDatastoresResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MedicalImaging::ListDatastores - Arguments for method ListDatastores on L<Paws::MedicalImaging>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDatastores on the
L<AWS Health Imaging|Paws::MedicalImaging> service. Use the attributes of this class
as arguments to method ListDatastores.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDatastores.

=head1 SYNOPSIS

    my $medical-imaging = Paws->service('MedicalImaging');
    my $ListDatastoresResponse = $medical -imaging->ListDatastores(
      DatastoreStatus => 'CREATING',       # OPTIONAL
      MaxResults      => 1,                # OPTIONAL
      NextToken       => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $DatastoreSummaries = $ListDatastoresResponse->DatastoreSummaries;
    my $NextToken          = $ListDatastoresResponse->NextToken;

    # Returns a L<Paws::MedicalImaging::ListDatastoresResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/medical-imaging/ListDatastores>

=head1 ATTRIBUTES


=head2 DatastoreStatus => Str

The data store status.

Valid values are: C<"CREATING">, C<"CREATE_FAILED">, C<"ACTIVE">, C<"DELETING">, C<"DELETED">

=head2 MaxResults => Int

Valid Range: Minimum value of 1. Maximum value of 50.



=head2 NextToken => Str

The pagination token used to request the list of data stores on the
next page.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDatastores in L<Paws::MedicalImaging>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

