
package Paws::Resiliencehub::DescribeAppVersionResponse;
  use Moose;
  has AdditionalInfo => (is => 'ro', isa => 'Paws::Resiliencehub::AdditionalInfoMap', traits => ['NameInRequest'], request_name => 'additionalInfo');
  has AppArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'appArn', required => 1);
  has AppVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'appVersion', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Resiliencehub::DescribeAppVersionResponse

=head1 ATTRIBUTES


=head2 AdditionalInfo => L<Paws::Resiliencehub::AdditionalInfoMap>

Additional configuration parameters for an Resilience Hub application.
If you want to implement C<additionalInfo> through the Resilience Hub
console rather than using an API call, see Configure the application
configuration parameters
(https://docs.aws.amazon.com/resilience-hub/latest/userguide/app-config-param.html).

Currently, this parameter supports only failover region and account.


=head2 B<REQUIRED> AppArn => Str

Amazon Resource Name (ARN) of the Resilience Hub application. The
format for this ARN is:
arn:C<partition>:resiliencehub:C<region>:C<account>:app/C<app-id>. For
more information about ARNs, see Amazon Resource Names (ARNs)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
in the I<Amazon Web Services General Reference> guide.


=head2 B<REQUIRED> AppVersion => Str

Resilience Hub application version.


=head2 _request_id => Str


=cut

