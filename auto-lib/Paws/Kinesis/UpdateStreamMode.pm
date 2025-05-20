
package Paws::Kinesis::UpdateStreamMode;
  use Moose;
  has StreamARN => (is => 'ro', isa => 'Str', required => 1);
  has StreamModeDetails => (is => 'ro', isa => 'Paws::Kinesis::StreamModeDetails', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateStreamMode');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kinesis::UpdateStreamMode - Arguments for method UpdateStreamMode on L<Paws::Kinesis>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateStreamMode on the
L<Amazon Kinesis|Paws::Kinesis> service. Use the attributes of this class
as arguments to method UpdateStreamMode.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateStreamMode.

=head1 SYNOPSIS

    my $kinesis = Paws->service('Kinesis');
    $kinesis->UpdateStreamMode(
      StreamARN         => 'MyStreamARN',
      StreamModeDetails => {
        StreamMode => 'PROVISIONED',    # values: PROVISIONED, ON_DEMAND

      },

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kinesis/UpdateStreamMode>

=head1 ATTRIBUTES


=head2 B<REQUIRED> StreamARN => Str

Specifies the ARN of the data stream whose capacity mode you want to
update.



=head2 B<REQUIRED> StreamModeDetails => L<Paws::Kinesis::StreamModeDetails>

Specifies the capacity mode to which you want to set your data stream.
Currently, in Kinesis Data Streams, you can choose between an
B<on-demand> capacity mode and a B<provisioned> capacity mode for your
data streams.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateStreamMode in L<Paws::Kinesis>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

