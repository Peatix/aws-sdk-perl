
package Paws::IVS::BatchStartViewerSessionRevocation;
  use Moose;
  has ViewerSessions => (is => 'ro', isa => 'ArrayRef[Paws::IVS::BatchStartViewerSessionRevocationViewerSession]', traits => ['NameInRequest'], request_name => 'viewerSessions', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchStartViewerSessionRevocation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/BatchStartViewerSessionRevocation');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IVS::BatchStartViewerSessionRevocationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IVS::BatchStartViewerSessionRevocation - Arguments for method BatchStartViewerSessionRevocation on L<Paws::IVS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchStartViewerSessionRevocation on the
L<Amazon Interactive Video Service|Paws::IVS> service. Use the attributes of this class
as arguments to method BatchStartViewerSessionRevocation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchStartViewerSessionRevocation.

=head1 SYNOPSIS

    my $ivs = Paws->service('IVS');
    my $BatchStartViewerSessionRevocationResponse =
      $ivs->BatchStartViewerSessionRevocation(
      ViewerSessions => [
        {
          ChannelArn => 'MyChannelArn',                   # min: 1, max: 128
          ViewerId   => 'MyViewerId',                     # min: 1, max: 40
          ViewerSessionVersionsLessThanOrEqualTo => 1,    # OPTIONAL
        },
        ...
      ],

      );

    # Results:
    my $Errors = $BatchStartViewerSessionRevocationResponse->Errors;

    # Returns a L<Paws::IVS::BatchStartViewerSessionRevocationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ivs/BatchStartViewerSessionRevocation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ViewerSessions => ArrayRef[L<Paws::IVS::BatchStartViewerSessionRevocationViewerSession>]

Array of viewer sessions, one per channel-ARN and viewer-ID pair.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchStartViewerSessionRevocation in L<Paws::IVS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

