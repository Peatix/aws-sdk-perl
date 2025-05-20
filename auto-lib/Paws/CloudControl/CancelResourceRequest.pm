
package Paws::CloudControl::CancelResourceRequest;
  use Moose;
  has RequestToken => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CancelResourceRequest');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudControl::CancelResourceRequestOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudControl::CancelResourceRequest - Arguments for method CancelResourceRequest on L<Paws::CloudControl>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CancelResourceRequest on the
L<AWS Cloud Control API|Paws::CloudControl> service. Use the attributes of this class
as arguments to method CancelResourceRequest.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CancelResourceRequest.

=head1 SYNOPSIS

    my $cloudcontrolapi = Paws->service('CloudControl');
    my $CancelResourceRequestOutput = $cloudcontrolapi->CancelResourceRequest(
      RequestToken => 'MyRequestToken',

    );

    # Results:
    my $ProgressEvent = $CancelResourceRequestOutput->ProgressEvent;

    # Returns a L<Paws::CloudControl::CancelResourceRequestOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudcontrolapi/CancelResourceRequest>

=head1 ATTRIBUTES


=head2 B<REQUIRED> RequestToken => Str

The C<RequestToken> of the C<ProgressEvent> object returned by the
resource operation request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CancelResourceRequest in L<Paws::CloudControl>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

