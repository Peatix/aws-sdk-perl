package Paws::EC2::MacSystemIntegrityProtectionConfigurationRequest;
  use Moose;
  has AppleInternal => (is => 'ro', isa => 'Str');
  has BaseSystem => (is => 'ro', isa => 'Str');
  has DebuggingRestrictions => (is => 'ro', isa => 'Str');
  has DTraceRestrictions => (is => 'ro', isa => 'Str');
  has FilesystemProtections => (is => 'ro', isa => 'Str');
  has KextSigning => (is => 'ro', isa => 'Str');
  has NvramProtections => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::MacSystemIntegrityProtectionConfigurationRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::MacSystemIntegrityProtectionConfigurationRequest object:

  $service_obj->Method(Att1 => { AppleInternal => $value, ..., NvramProtections => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::MacSystemIntegrityProtectionConfigurationRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->AppleInternal

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AppleInternal => Str

Enables or disables Apple Internal.


=head2 BaseSystem => Str

Enables or disables Base System.


=head2 DebuggingRestrictions => Str

Enables or disables Debugging Restrictions.


=head2 DTraceRestrictions => Str

Enables or disables Dtrace Restrictions.


=head2 FilesystemProtections => Str

Enables or disables Filesystem Protections.


=head2 KextSigning => Str

Enables or disables Kext Signing.


=head2 NvramProtections => Str

Enables or disables Nvram Protections.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
