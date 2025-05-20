package Paws::EC2::CloudWatchLogOptionsSpecification;
  use Moose;
  has LogEnabled => (is => 'ro', isa => 'Bool');
  has LogGroupArn => (is => 'ro', isa => 'Str');
  has LogOutputFormat => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CloudWatchLogOptionsSpecification

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::CloudWatchLogOptionsSpecification object:

  $service_obj->Method(Att1 => { LogEnabled => $value, ..., LogOutputFormat => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::CloudWatchLogOptionsSpecification object:

  $result = $service_obj->Method(...);
  $result->Att1->LogEnabled

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 LogEnabled => Bool

Enable or disable VPN tunnel logging feature. Default value is
C<False>.

Valid values: C<True> | C<False>


=head2 LogGroupArn => Str

The Amazon Resource Name (ARN) of the CloudWatch log group to send logs
to.


=head2 LogOutputFormat => Str

Set log format. Default format is C<json>.

Valid values: C<json> | C<text>



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
