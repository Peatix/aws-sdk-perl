package Paws::EC2::IpamScope;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has IpamArn => (is => 'ro', isa => 'Str', request_name => 'ipamArn', traits => ['NameInRequest']);
  has IpamRegion => (is => 'ro', isa => 'Str', request_name => 'ipamRegion', traits => ['NameInRequest']);
  has IpamScopeArn => (is => 'ro', isa => 'Str', request_name => 'ipamScopeArn', traits => ['NameInRequest']);
  has IpamScopeId => (is => 'ro', isa => 'Str', request_name => 'ipamScopeId', traits => ['NameInRequest']);
  has IpamScopeType => (is => 'ro', isa => 'Str', request_name => 'ipamScopeType', traits => ['NameInRequest']);
  has IsDefault => (is => 'ro', isa => 'Bool', request_name => 'isDefault', traits => ['NameInRequest']);
  has OwnerId => (is => 'ro', isa => 'Str', request_name => 'ownerId', traits => ['NameInRequest']);
  has PoolCount => (is => 'ro', isa => 'Int', request_name => 'poolCount', traits => ['NameInRequest']);
  has State => (is => 'ro', isa => 'Str', request_name => 'state', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', request_name => 'tagSet', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::IpamScope

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::IpamScope object:

  $service_obj->Method(Att1 => { Description => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::IpamScope object:

  $result = $service_obj->Method(...);
  $result->Att1->Description

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Description => Str

The description of the scope.


=head2 IpamArn => Str

The ARN of the IPAM.


=head2 IpamRegion => Str

The Amazon Web Services Region of the IPAM scope.


=head2 IpamScopeArn => Str

The Amazon Resource Name (ARN) of the scope.


=head2 IpamScopeId => Str

The ID of the scope.


=head2 IpamScopeType => Str

The type of the scope.


=head2 IsDefault => Bool

Defines if the scope is the default scope or not.


=head2 OwnerId => Str

The Amazon Web Services account ID of the owner of the scope.


=head2 PoolCount => Int

The number of pools in the scope.


=head2 State => Str

The state of the IPAM scope.


=head2 Tags => ArrayRef[L<Paws::EC2::Tag>]

The key/value combination of a tag assigned to the resource. Use the
tag key in the filter name and the tag value as the filter value. For
example, to find all resources that have a tag with the key C<Owner>
and the value C<TeamA>, specify C<tag:Owner> for the filter name and
C<TeamA> for the filter value.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
