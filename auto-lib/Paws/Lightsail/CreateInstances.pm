
package Paws::Lightsail::CreateInstances;
  use Moose;
  has AddOns => (is => 'ro', isa => 'ArrayRef[Paws::Lightsail::AddOnRequest]', traits => ['NameInRequest'], request_name => 'addOns' );
  has AvailabilityZone => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'availabilityZone' , required => 1);
  has BlueprintId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'blueprintId' , required => 1);
  has BundleId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'bundleId' , required => 1);
  has CustomImageName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'customImageName' );
  has InstanceNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'instanceNames' , required => 1);
  has IpAddressType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'ipAddressType' );
  has KeyPairName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'keyPairName' );
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Lightsail::Tag]', traits => ['NameInRequest'], request_name => 'tags' );
  has UserData => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'userData' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateInstances');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lightsail::CreateInstancesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::CreateInstances - Arguments for method CreateInstances on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateInstances on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method CreateInstances.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateInstances.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $CreateInstancesResult = $lightsail->CreateInstances(
      AvailabilityZone => 'Mystring',
      BlueprintId      => 'MyNonEmptyString',
      BundleId         => 'MyNonEmptyString',
      InstanceNames    => [ 'Mystring', ... ],
      AddOns           => [
        {
          AddOnType =>
            'AutoSnapshot',    # values: AutoSnapshot, StopInstanceOnIdle
          AutoSnapshotAddOnRequest => {
            SnapshotTimeOfDay => 'MyTimeOfDay',    # OPTIONAL
          },    # OPTIONAL
          StopInstanceOnIdleRequest => {
            Duration  => 'Mystring',
            Threshold => 'Mystring',
          },    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      CustomImageName => 'MyResourceName',    # OPTIONAL
      IpAddressType   => 'dualstack',         # OPTIONAL
      KeyPairName     => 'MyResourceName',    # OPTIONAL
      Tags            => [
        {
          Key   => 'MyTagKey',      # OPTIONAL
          Value => 'MyTagValue',    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      UserData => 'Mystring',    # OPTIONAL
    );

    # Results:
    my $Operations = $CreateInstancesResult->Operations;

    # Returns a L<Paws::Lightsail::CreateInstancesResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/CreateInstances>

=head1 ATTRIBUTES


=head2 AddOns => ArrayRef[L<Paws::Lightsail::AddOnRequest>]

An array of objects representing the add-ons to enable for the new
instance.



=head2 B<REQUIRED> AvailabilityZone => Str

The Availability Zone in which to create your instance. Use the
following format: C<us-east-2a> (case sensitive). You can get a list of
Availability Zones by using the get regions
(http://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_GetRegions.html)
operation. Be sure to add the C<include Availability Zones> parameter
to your request.



=head2 B<REQUIRED> BlueprintId => Str

The ID for a virtual private server image (C<app_wordpress_x_x> or
C<app_lamp_x_x>). Use the C<get blueprints> operation to return a list
of available images (or I<blueprints>).

Use active blueprints when creating new instances. Inactive blueprints
are listed to support customers with existing instances and are not
necessarily available to create new instances. Blueprints are marked
inactive when they become outdated due to operating system updates or
new application releases.



=head2 B<REQUIRED> BundleId => Str

The bundle of specification information for your virtual private server
(or I<instance>), including the pricing plan (C<medium_x_x>).



=head2 CustomImageName => Str

(Discontinued) The name for your custom image.

In releases prior to June 12, 2017, this parameter was ignored by the
API. It is now discontinued.



=head2 B<REQUIRED> InstanceNames => ArrayRef[Str|Undef]

The names to use for your new Lightsail instances. Separate multiple
values using quotation marks and commas, for example:
C<["MyFirstInstance","MySecondInstance"]>



=head2 IpAddressType => Str

The IP address type for the instance.

The possible values are C<ipv4> for IPv4 only, C<ipv6> for IPv6 only,
and C<dualstack> for IPv4 and IPv6.

The default value is C<dualstack>.

Valid values are: C<"dualstack">, C<"ipv4">, C<"ipv6">

=head2 KeyPairName => Str

The name of your key pair.



=head2 Tags => ArrayRef[L<Paws::Lightsail::Tag>]

The tag keys and optional values to add to the resource during create.

Use the C<TagResource> action to tag a resource after it's created.



=head2 UserData => Str

A launch script you can create that configures a server with additional
user data. For example, you might want to run C<apt-get -y update>.

Depending on the machine image you choose, the command to get software
on your instance varies. Amazon Linux and CentOS use C<yum>, Debian and
Ubuntu use C<apt-get>, and FreeBSD uses C<pkg>. For a complete list,
see the Amazon Lightsail Developer Guide
(https://docs.aws.amazon.com/lightsail/latest/userguide/compare-options-choose-lightsail-instance-image).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateInstances in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

