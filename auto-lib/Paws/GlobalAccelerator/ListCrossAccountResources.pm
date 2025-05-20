
package Paws::GlobalAccelerator::ListCrossAccountResources;
  use Moose;
  has AcceleratorArn => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ResourceOwnerAwsAccountId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListCrossAccountResources');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GlobalAccelerator::ListCrossAccountResourcesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GlobalAccelerator::ListCrossAccountResources - Arguments for method ListCrossAccountResources on L<Paws::GlobalAccelerator>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListCrossAccountResources on the
L<AWS Global Accelerator|Paws::GlobalAccelerator> service. Use the attributes of this class
as arguments to method ListCrossAccountResources.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListCrossAccountResources.

=head1 SYNOPSIS

    my $globalaccelerator = Paws->service('GlobalAccelerator');
    my $ListCrossAccountResourcesResponse =
      $globalaccelerator->ListCrossAccountResources(
      ResourceOwnerAwsAccountId => 'MyAwsAccountId',
      AcceleratorArn            => 'MyGenericString',    # OPTIONAL
      MaxResults                => 1,                    # OPTIONAL
      NextToken                 => 'MyGenericString',    # OPTIONAL
      );

    # Results:
    my $CrossAccountResources =
      $ListCrossAccountResourcesResponse->CrossAccountResources;
    my $NextToken = $ListCrossAccountResourcesResponse->NextToken;

# Returns a L<Paws::GlobalAccelerator::ListCrossAccountResourcesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/globalaccelerator/ListCrossAccountResources>

=head1 ATTRIBUTES


=head2 AcceleratorArn => Str

The Amazon Resource Name (ARN) of an accelerator in a cross-account
attachment.



=head2 MaxResults => Int

The number of cross-account resource objects that you want to return
with this call. The default value is 10.



=head2 NextToken => Str

The token for the next set of results. You receive this token from a
previous call.



=head2 B<REQUIRED> ResourceOwnerAwsAccountId => Str

The account ID of a resource owner in a cross-account attachment.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListCrossAccountResources in L<Paws::GlobalAccelerator>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

