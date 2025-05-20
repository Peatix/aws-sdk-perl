
package Paws::OAM::CreateSink;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::OAM::TagMapInput');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSink');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/CreateSink');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OAM::CreateSinkOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OAM::CreateSink - Arguments for method CreateSink on L<Paws::OAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateSink on the
L<CloudWatch Observability Access Manager|Paws::OAM> service. Use the attributes of this class
as arguments to method CreateSink.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateSink.

=head1 SYNOPSIS

    my $oam = Paws->service('OAM');
    my $CreateSinkOutput = $oam->CreateSink(
      Name => 'MySinkName',
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Arn  = $CreateSinkOutput->Arn;
    my $Id   = $CreateSinkOutput->Id;
    my $Name = $CreateSinkOutput->Name;
    my $Tags = $CreateSinkOutput->Tags;

    # Returns a L<Paws::OAM::CreateSinkOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/oam/CreateSink>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

A name for the sink.



=head2 Tags => L<Paws::OAM::TagMapInput>

Assigns one or more tags (key-value pairs) to the link.

Tags can help you organize and categorize your resources. You can also
use them to scope user permissions by granting a user permission to
access or change only resources with certain tag values.

For more information about using tags to control access, see
Controlling access to Amazon Web Services resources using tags
(https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateSink in L<Paws::OAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

