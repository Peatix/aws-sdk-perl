
package Paws::DMS::CreateInstanceProfile;
  use Moose;
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has InstanceProfileName => (is => 'ro', isa => 'Str');
  has KmsKeyArn => (is => 'ro', isa => 'Str');
  has NetworkType => (is => 'ro', isa => 'Str');
  has PubliclyAccessible => (is => 'ro', isa => 'Bool');
  has SubnetGroupIdentifier => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::DMS::Tag]');
  has VpcSecurityGroups => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateInstanceProfile');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DMS::CreateInstanceProfileResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::CreateInstanceProfile - Arguments for method CreateInstanceProfile on L<Paws::DMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateInstanceProfile on the
L<AWS Database Migration Service|Paws::DMS> service. Use the attributes of this class
as arguments to method CreateInstanceProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateInstanceProfile.

=head1 SYNOPSIS

    my $dms = Paws->service('DMS');
    my $CreateInstanceProfileResponse = $dms->CreateInstanceProfile(
      AvailabilityZone      => 'MyString',    # OPTIONAL
      Description           => 'MyString',    # OPTIONAL
      InstanceProfileName   => 'MyString',    # OPTIONAL
      KmsKeyArn             => 'MyString',    # OPTIONAL
      NetworkType           => 'MyString',    # OPTIONAL
      PubliclyAccessible    => 1,             # OPTIONAL
      SubnetGroupIdentifier => 'MyString',    # OPTIONAL
      Tags                  => [
        {
          Key         => 'MyString',
          ResourceArn => 'MyString',
          Value       => 'MyString',
        },
        ...
      ],                                      # OPTIONAL
      VpcSecurityGroups => [ 'MyString', ... ],    # OPTIONAL
    );

    # Results:
    my $InstanceProfile = $CreateInstanceProfileResponse->InstanceProfile;

    # Returns a L<Paws::DMS::CreateInstanceProfileResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dms/CreateInstanceProfile>

=head1 ATTRIBUTES


=head2 AvailabilityZone => Str

The Availability Zone where the instance profile will be created. The
default value is a random, system-chosen Availability Zone in the
Amazon Web Services Region where your data provider is created, for
examplem C<us-east-1d>.



=head2 Description => Str

A user-friendly description of the instance profile.



=head2 InstanceProfileName => Str

A user-friendly name for the instance profile.



=head2 KmsKeyArn => Str

The Amazon Resource Name (ARN) of the KMS key that is used to encrypt
the connection parameters for the instance profile.

If you don't specify a value for the C<KmsKeyArn> parameter, then DMS
uses your default encryption key.

KMS creates the default encryption key for your Amazon Web Services
account. Your Amazon Web Services account has a different default
encryption key for each Amazon Web Services Region.



=head2 NetworkType => Str

Specifies the network type for the instance profile. A value of C<IPV4>
represents an instance profile with IPv4 network type and only supports
IPv4 addressing. A value of C<IPV6> represents an instance profile with
IPv6 network type and only supports IPv6 addressing. A value of C<DUAL>
represents an instance profile with dual network type that supports
IPv4 and IPv6 addressing.



=head2 PubliclyAccessible => Bool

Specifies the accessibility options for the instance profile. A value
of C<true> represents an instance profile with a public IP address. A
value of C<false> represents an instance profile with a private IP
address. The default value is C<true>.



=head2 SubnetGroupIdentifier => Str

A subnet group to associate with the instance profile.



=head2 Tags => ArrayRef[L<Paws::DMS::Tag>]

One or more tags to be assigned to the instance profile.



=head2 VpcSecurityGroups => ArrayRef[Str|Undef]

Specifies the VPC security group names to be used with the instance
profile. The VPC security group must work with the VPC containing the
instance profile.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateInstanceProfile in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

