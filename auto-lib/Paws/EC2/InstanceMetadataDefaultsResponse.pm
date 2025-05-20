package Paws::EC2::InstanceMetadataDefaultsResponse;
  use Moose;
  has HttpEndpoint => (is => 'ro', isa => 'Str', request_name => 'httpEndpoint', traits => ['NameInRequest']);
  has HttpPutResponseHopLimit => (is => 'ro', isa => 'Int', request_name => 'httpPutResponseHopLimit', traits => ['NameInRequest']);
  has HttpTokens => (is => 'ro', isa => 'Str', request_name => 'httpTokens', traits => ['NameInRequest']);
  has InstanceMetadataTags => (is => 'ro', isa => 'Str', request_name => 'instanceMetadataTags', traits => ['NameInRequest']);
  has ManagedBy => (is => 'ro', isa => 'Str', request_name => 'managedBy', traits => ['NameInRequest']);
  has ManagedExceptionMessage => (is => 'ro', isa => 'Str', request_name => 'managedExceptionMessage', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::InstanceMetadataDefaultsResponse

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::InstanceMetadataDefaultsResponse object:

  $service_obj->Method(Att1 => { HttpEndpoint => $value, ..., ManagedExceptionMessage => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::InstanceMetadataDefaultsResponse object:

  $result = $service_obj->Method(...);
  $result->Att1->HttpEndpoint

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 HttpEndpoint => Str

Indicates whether the IMDS endpoint for an instance is enabled or
disabled. When disabled, the instance metadata can't be accessed.


=head2 HttpPutResponseHopLimit => Int

The maximum number of hops that the metadata token can travel.


=head2 HttpTokens => Str

Indicates whether IMDSv2 is required.

=over

=item *

C<optional> E<ndash> IMDSv2 is optional, which means that you can use
either IMDSv2 or IMDSv1.

=item *

C<required> E<ndash> IMDSv2 is required, which means that IMDSv1 is
disabled, and you must use IMDSv2.

=back



=head2 InstanceMetadataTags => Str

Indicates whether access to instance tags from the instance metadata is
enabled or disabled. For more information, see Work with instance tags
using the instance metadata
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html#work-with-tags-in-IMDS)
in the I<Amazon EC2 User Guide>.


=head2 ManagedBy => Str

The entity that manages the IMDS default settings. Possible values
include:

=over

=item *

C<account> - The IMDS default settings are managed by the account.

=item *

C<declarative-policy> - The IMDS default settings are managed by a
declarative policy and can't be modified by the account.

=back



=head2 ManagedExceptionMessage => Str

The customized exception message that is specified in the declarative
policy.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
