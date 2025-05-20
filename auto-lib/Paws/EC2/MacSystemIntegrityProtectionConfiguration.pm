package Paws::EC2::MacSystemIntegrityProtectionConfiguration;
  use Moose;
  has AppleInternal => (is => 'ro', isa => 'Str', request_name => 'appleInternal', traits => ['NameInRequest']);
  has BaseSystem => (is => 'ro', isa => 'Str', request_name => 'baseSystem', traits => ['NameInRequest']);
  has DebuggingRestrictions => (is => 'ro', isa => 'Str', request_name => 'debuggingRestrictions', traits => ['NameInRequest']);
  has DTraceRestrictions => (is => 'ro', isa => 'Str', request_name => 'dTraceRestrictions', traits => ['NameInRequest']);
  has FilesystemProtections => (is => 'ro', isa => 'Str', request_name => 'filesystemProtections', traits => ['NameInRequest']);
  has KextSigning => (is => 'ro', isa => 'Str', request_name => 'kextSigning', traits => ['NameInRequest']);
  has NvramProtections => (is => 'ro', isa => 'Str', request_name => 'nvramProtections', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::MacSystemIntegrityProtectionConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::MacSystemIntegrityProtectionConfiguration object:

  $service_obj->Method(Att1 => { AppleInternal => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::MacSystemIntegrityProtectionConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->AppleInternal

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AppleInternal => Str

Indicates whether Apple Internal was enabled or disabled by the task.


=head2 BaseSystem => Str

Indicates whether Base System was enabled or disabled by the task.


=head2 DebuggingRestrictions => Str

Indicates whether Debugging Restrictions was enabled or disabled by the
task.


=head2 DTraceRestrictions => Str

Indicates whether Dtrace Restrictions was enabled or disabled by the
task.


=head2 FilesystemProtections => Str

Indicates whether Filesystem Protections was enabled or disabled by the
task.


=head2 KextSigning => Str

Indicates whether Kext Signing was enabled or disabled by the task.


=head2 NvramProtections => Str

Indicates whether NVRAM Protections was enabled or disabled by the
task.


=head2 Status => Str

Indicates SIP was enabled or disabled by the task.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
