
package Paws::RUM::PutResourcePolicy;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Name', required => 1);
  has PolicyDocument => (is => 'ro', isa => 'Str', required => 1);
  has PolicyRevisionId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutResourcePolicy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/appmonitor/{Name}/policy');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RUM::PutResourcePolicyResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RUM::PutResourcePolicy - Arguments for method PutResourcePolicy on L<Paws::RUM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutResourcePolicy on the
L<CloudWatch RUM|Paws::RUM> service. Use the attributes of this class
as arguments to method PutResourcePolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutResourcePolicy.

=head1 SYNOPSIS

    my $rum = Paws->service('RUM');
    my $PutResourcePolicyResponse = $rum->PutResourcePolicy(
      Name             => 'MyAppMonitorName',
      PolicyDocument   => 'MyString',
      PolicyRevisionId => 'MyPolicyRevisionId',    # OPTIONAL
    );

    # Results:
    my $PolicyDocument   = $PutResourcePolicyResponse->PolicyDocument;
    my $PolicyRevisionId = $PutResourcePolicyResponse->PolicyRevisionId;

    # Returns a L<Paws::RUM::PutResourcePolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rum/PutResourcePolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the app monitor that you want to apply this resource-based
policy to. To find the names of your app monitors, you can use the
ListAppMonitors
(https://docs.aws.amazon.com/cloudwatchrum/latest/APIReference/API_ListAppMonitors.html)
operation.



=head2 B<REQUIRED> PolicyDocument => Str

The JSON to use as the resource policy. The document can be up to 4 KB
in size. For more information about the contents and syntax for this
policy, see Using resource-based policies with CloudWatch RUM
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-RUM-resource-policies.html).



=head2 PolicyRevisionId => Str

A string value that you can use to conditionally update your policy.
You can provide the revision ID of your existing policy to make
mutating requests against that policy.

When you assign a policy revision ID, then later requests about that
policy will be rejected with an C<InvalidPolicyRevisionIdException>
error if they don't provide the correct current revision ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutResourcePolicy in L<Paws::RUM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

