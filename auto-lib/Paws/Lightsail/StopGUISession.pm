
package Paws::Lightsail::StopGUISession;
  use Moose;
  has ResourceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StopGUISession');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lightsail::StopGUISessionResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::StopGUISession - Arguments for method StopGUISession on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StopGUISession on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method StopGUISession.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StopGUISession.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $StopGUISessionResult = $lightsail->StopGUISession(
      ResourceName => 'MyResourceName',

    );

    # Results:
    my $Operations = $StopGUISessionResult->Operations;

    # Returns a L<Paws::Lightsail::StopGUISessionResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/StopGUISession>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceName => Str

The resource name.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StopGUISession in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

