
package Paws::ARCZonalShift::ListManagedResources;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListManagedResources');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/managedresources');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ARCZonalShift::ListManagedResourcesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ARCZonalShift::ListManagedResources - Arguments for method ListManagedResources on L<Paws::ARCZonalShift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListManagedResources on the
L<AWS ARC - Zonal Shift|Paws::ARCZonalShift> service. Use the attributes of this class
as arguments to method ListManagedResources.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListManagedResources.

=head1 SYNOPSIS

    my $arc-zonal-shift = Paws->service('ARCZonalShift');
    my $ListManagedResourcesResponse = $arc -zonal-shift->ListManagedResources(
      MaxResults => 1,             # OPTIONAL
      NextToken  => 'MyString',    # OPTIONAL
    );

    # Results:
    my $Items     = $ListManagedResourcesResponse->Items;
    my $NextToken = $ListManagedResourcesResponse->NextToken;

    # Returns a L<Paws::ARCZonalShift::ListManagedResourcesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/arc-zonal-shift/ListManagedResources>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The number of objects that you want to return with this call.



=head2 NextToken => Str

Specifies that you want to receive the next page of results. Valid only
if you received a C<nextToken> response in the previous request. If you
did, it indicates that more output is available. Set this parameter to
the value provided by the previous call's C<nextToken> response to
request the next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListManagedResources in L<Paws::ARCZonalShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

