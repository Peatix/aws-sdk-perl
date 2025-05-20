
package Paws::QApps::DescribeQAppPermissions;
  use Moose;
  has AppId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'appId', required => 1);
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'instance-id', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeQAppPermissions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/apps.describeQAppPermissions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QApps::DescribeQAppPermissionsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QApps::DescribeQAppPermissions - Arguments for method DescribeQAppPermissions on L<Paws::QApps>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeQAppPermissions on the
L<QApps|Paws::QApps> service. Use the attributes of this class
as arguments to method DescribeQAppPermissions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeQAppPermissions.

=head1 SYNOPSIS

    my $data.qapps = Paws->service('QApps');
    my $DescribeQAppPermissionsOutput = $data . qapps->DescribeQAppPermissions(
      AppId      => 'MyUUID',
      InstanceId => 'MyInstanceId',

    );

    # Results:
    my $AppId       = $DescribeQAppPermissionsOutput->AppId;
    my $Permissions = $DescribeQAppPermissionsOutput->Permissions;
    my $ResourceArn = $DescribeQAppPermissionsOutput->ResourceArn;

    # Returns a L<Paws::QApps::DescribeQAppPermissionsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/data.qapps/DescribeQAppPermissions>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppId => Str

The unique identifier of the Amazon Q App for which to retrieve
permissions.



=head2 B<REQUIRED> InstanceId => Str

The unique identifier of the Amazon Q Business application environment
instance.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeQAppPermissions in L<Paws::QApps>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

