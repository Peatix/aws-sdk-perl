
package Paws::GlobalAccelerator::ListCrossAccountAttachments;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListCrossAccountAttachments');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GlobalAccelerator::ListCrossAccountAttachmentsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GlobalAccelerator::ListCrossAccountAttachments - Arguments for method ListCrossAccountAttachments on L<Paws::GlobalAccelerator>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListCrossAccountAttachments on the
L<AWS Global Accelerator|Paws::GlobalAccelerator> service. Use the attributes of this class
as arguments to method ListCrossAccountAttachments.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListCrossAccountAttachments.

=head1 SYNOPSIS

    my $globalaccelerator = Paws->service('GlobalAccelerator');
    my $ListCrossAccountAttachmentsResponse =
      $globalaccelerator->ListCrossAccountAttachments(
      MaxResults => 1,                    # OPTIONAL
      NextToken  => 'MyGenericString',    # OPTIONAL
      );

    # Results:
    my $CrossAccountAttachments =
      $ListCrossAccountAttachmentsResponse->CrossAccountAttachments;
    my $NextToken = $ListCrossAccountAttachmentsResponse->NextToken;

# Returns a L<Paws::GlobalAccelerator::ListCrossAccountAttachmentsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/globalaccelerator/ListCrossAccountAttachments>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The number of cross-account attachment objects that you want to return
with this call. The default value is 10.



=head2 NextToken => Str

The token for the next set of results. You receive this token from a
previous call.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListCrossAccountAttachments in L<Paws::GlobalAccelerator>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

