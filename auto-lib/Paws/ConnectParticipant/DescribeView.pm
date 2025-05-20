
package Paws::ConnectParticipant::DescribeView;
  use Moose;
  has ConnectionToken => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amz-Bearer', required => 1);
  has ViewToken => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ViewToken', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeView');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/participant/views/{ViewToken}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ConnectParticipant::DescribeViewResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectParticipant::DescribeView - Arguments for method DescribeView on L<Paws::ConnectParticipant>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeView on the
L<Amazon Connect Participant Service|Paws::ConnectParticipant> service. Use the attributes of this class
as arguments to method DescribeView.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeView.

=head1 SYNOPSIS

    my $participant.connect = Paws->service('ConnectParticipant');
    my $DescribeViewResponse = $participant . connect->DescribeView(
      ConnectionToken => 'MyParticipantToken',
      ViewToken       => 'MyViewToken',

    );

    # Results:
    my $View = $DescribeViewResponse->View;

    # Returns a L<Paws::ConnectParticipant::DescribeViewResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/participant.connect/DescribeView>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConnectionToken => Str

The connection token.



=head2 B<REQUIRED> ViewToken => Str

An encrypted token originating from the interactive message of a
ShowView block operation. Represents the desired view.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeView in L<Paws::ConnectParticipant>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

