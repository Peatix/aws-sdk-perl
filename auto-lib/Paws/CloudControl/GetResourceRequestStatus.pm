
package Paws::CloudControl::GetResourceRequestStatus;
  use Moose;
  has RequestToken => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetResourceRequestStatus');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudControl::GetResourceRequestStatusOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudControl::GetResourceRequestStatus - Arguments for method GetResourceRequestStatus on L<Paws::CloudControl>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetResourceRequestStatus on the
L<AWS Cloud Control API|Paws::CloudControl> service. Use the attributes of this class
as arguments to method GetResourceRequestStatus.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetResourceRequestStatus.

=head1 SYNOPSIS

    my $cloudcontrolapi = Paws->service('CloudControl');
    my $GetResourceRequestStatusOutput =
      $cloudcontrolapi->GetResourceRequestStatus(
      RequestToken => 'MyRequestToken',

      );

    # Results:
    my $HooksProgressEvent =
      $GetResourceRequestStatusOutput->HooksProgressEvent;
    my $ProgressEvent = $GetResourceRequestStatusOutput->ProgressEvent;

    # Returns a L<Paws::CloudControl::GetResourceRequestStatusOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudcontrolapi/GetResourceRequestStatus>

=head1 ATTRIBUTES


=head2 B<REQUIRED> RequestToken => Str

A unique token used to track the progress of the resource operation
request.

Request tokens are included in the C<ProgressEvent> type returned by a
resource operation request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetResourceRequestStatus in L<Paws::CloudControl>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

