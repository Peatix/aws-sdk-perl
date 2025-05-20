
package Paws::RedshiftServerless::CreateWorkgroup;
  use Moose;
  has BaseCapacity => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'baseCapacity' );
  has ConfigParameters => (is => 'ro', isa => 'ArrayRef[Paws::RedshiftServerless::ConfigParameter]', traits => ['NameInRequest'], request_name => 'configParameters' );
  has EnhancedVpcRouting => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'enhancedVpcRouting' );
  has IpAddressType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'ipAddressType' );
  has MaxCapacity => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxCapacity' );
  has NamespaceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'namespaceName' , required => 1);
  has Port => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'port' );
  has PricePerformanceTarget => (is => 'ro', isa => 'Paws::RedshiftServerless::PerformanceTarget', traits => ['NameInRequest'], request_name => 'pricePerformanceTarget' );
  has PubliclyAccessible => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'publiclyAccessible' );
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'securityGroupIds' );
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'subnetIds' );
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::RedshiftServerless::Tag]', traits => ['NameInRequest'], request_name => 'tags' );
  has TrackName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'trackName' );
  has WorkgroupName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'workgroupName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateWorkgroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedshiftServerless::CreateWorkgroupResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedshiftServerless::CreateWorkgroup - Arguments for method CreateWorkgroup on L<Paws::RedshiftServerless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateWorkgroup on the
L<Redshift Serverless|Paws::RedshiftServerless> service. Use the attributes of this class
as arguments to method CreateWorkgroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateWorkgroup.

=head1 SYNOPSIS

    my $redshift-serverless = Paws->service('RedshiftServerless');
    my $CreateWorkgroupResponse = $redshift -serverless->CreateWorkgroup(
      NamespaceName    => 'MyNamespaceName',
      WorkgroupName    => 'MyWorkgroupName',
      BaseCapacity     => 1,                   # OPTIONAL
      ConfigParameters => [
        {
          ParameterKey   => 'MyParameterKey',      # OPTIONAL
          ParameterValue => 'MyParameterValue',    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      EnhancedVpcRouting     => 1,                    # OPTIONAL
      IpAddressType          => 'MyIpAddressType',    # OPTIONAL
      MaxCapacity            => 1,                    # OPTIONAL
      Port                   => 1,                    # OPTIONAL
      PricePerformanceTarget => {
        Level  => 1,            # min: 1, max: 100; OPTIONAL
        Status => 'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
      },    # OPTIONAL
      PubliclyAccessible => 1,                               # OPTIONAL
      SecurityGroupIds   => [ 'MySecurityGroupId', ... ],    # OPTIONAL
      SubnetIds          => [ 'MySubnetId',        ... ],    # OPTIONAL
      Tags               => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      TrackName => 'MyTrackName',    # OPTIONAL
    );

    # Results:
    my $Workgroup = $CreateWorkgroupResponse->Workgroup;

    # Returns a L<Paws::RedshiftServerless::CreateWorkgroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift-serverless/CreateWorkgroup>

=head1 ATTRIBUTES


=head2 BaseCapacity => Int

The base data warehouse capacity of the workgroup in Redshift
Processing Units (RPUs).



=head2 ConfigParameters => ArrayRef[L<Paws::RedshiftServerless::ConfigParameter>]

An array of parameters to set for advanced control over a database. The
options are C<auto_mv>, C<datestyle>,
C<enable_case_sensitive_identifier>, C<enable_user_activity_logging>,
C<query_group>, C<search_path>, C<require_ssl>, C<use_fips_ssl>, and
query monitoring metrics that let you define performance boundaries.
For more information about query monitoring rules and available
metrics, see Query monitoring metrics for Amazon Redshift Serverless
(https://docs.aws.amazon.com/redshift/latest/dg/cm-c-wlm-query-monitoring-rules.html#cm-c-wlm-query-monitoring-metrics-serverless).



=head2 EnhancedVpcRouting => Bool

The value that specifies whether to turn on enhanced virtual private
cloud (VPC) routing, which forces Amazon Redshift Serverless to route
traffic through your VPC instead of over the internet.



=head2 IpAddressType => Str

The IP address type that the workgroup supports. Possible values are
C<ipv4> and C<dualstack>.



=head2 MaxCapacity => Int

The maximum data-warehouse capacity Amazon Redshift Serverless uses to
serve queries. The max capacity is specified in RPUs.



=head2 B<REQUIRED> NamespaceName => Str

The name of the namespace to associate with the workgroup.



=head2 Port => Int

The custom port to use when connecting to a workgroup. Valid port
ranges are 5431-5455 and 8191-8215. The default is 5439.



=head2 PricePerformanceTarget => L<Paws::RedshiftServerless::PerformanceTarget>

An object that represents the price performance target settings for the
workgroup.



=head2 PubliclyAccessible => Bool

A value that specifies whether the workgroup can be accessed from a
public network.



=head2 SecurityGroupIds => ArrayRef[Str|Undef]

An array of security group IDs to associate with the workgroup.



=head2 SubnetIds => ArrayRef[Str|Undef]

An array of VPC subnet IDs to associate with the workgroup.



=head2 Tags => ArrayRef[L<Paws::RedshiftServerless::Tag>]

A array of tag instances.



=head2 TrackName => Str

An optional parameter for the name of the track for the workgroup. If
you don't provide a track name, the workgroup is assigned to the
C<current> track.



=head2 B<REQUIRED> WorkgroupName => Str

The name of the created workgroup.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateWorkgroup in L<Paws::RedshiftServerless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

