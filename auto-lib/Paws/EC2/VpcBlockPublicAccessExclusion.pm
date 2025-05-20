package Paws::EC2::VpcBlockPublicAccessExclusion;
  use Moose;
  has CreationTimestamp => (is => 'ro', isa => 'Str', request_name => 'creationTimestamp', traits => ['NameInRequest']);
  has DeletionTimestamp => (is => 'ro', isa => 'Str', request_name => 'deletionTimestamp', traits => ['NameInRequest']);
  has ExclusionId => (is => 'ro', isa => 'Str', request_name => 'exclusionId', traits => ['NameInRequest']);
  has InternetGatewayExclusionMode => (is => 'ro', isa => 'Str', request_name => 'internetGatewayExclusionMode', traits => ['NameInRequest']);
  has LastUpdateTimestamp => (is => 'ro', isa => 'Str', request_name => 'lastUpdateTimestamp', traits => ['NameInRequest']);
  has Reason => (is => 'ro', isa => 'Str', request_name => 'reason', traits => ['NameInRequest']);
  has ResourceArn => (is => 'ro', isa => 'Str', request_name => 'resourceArn', traits => ['NameInRequest']);
  has State => (is => 'ro', isa => 'Str', request_name => 'state', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', request_name => 'tagSet', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::VpcBlockPublicAccessExclusion

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::VpcBlockPublicAccessExclusion object:

  $service_obj->Method(Att1 => { CreationTimestamp => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::VpcBlockPublicAccessExclusion object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationTimestamp

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 CreationTimestamp => Str

When the exclusion was created.


=head2 DeletionTimestamp => Str

When the exclusion was deleted.


=head2 ExclusionId => Str

The ID of the exclusion.


=head2 InternetGatewayExclusionMode => Str

The exclusion mode for internet gateway traffic.

=over

=item *

C<allow-bidirectional>: Allow all internet traffic to and from the
excluded VPCs and subnets.

=item *

C<allow-egress>: Allow outbound internet traffic from the excluded VPCs
and subnets. Block inbound internet traffic to the excluded VPCs and
subnets. Only applies when VPC Block Public Access is set to
Bidirectional.

=back



=head2 LastUpdateTimestamp => Str

When the exclusion was last updated.


=head2 Reason => Str

The reason for the current exclusion state.


=head2 ResourceArn => Str

The ARN of the exclusion.


=head2 State => Str

The state of the exclusion.


=head2 Tags => ArrayRef[L<Paws::EC2::Tag>]

C<tag> - The key/value combination of a tag assigned to the resource.
Use the tag key in the filter name and the tag value as the filter
value. For example, to find all resources that have a tag with the key
C<Owner> and the value C<TeamA>, specify C<tag:Owner> for the filter
name and C<TeamA> for the filter value.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
