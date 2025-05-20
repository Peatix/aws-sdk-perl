
package Paws::Resiliencehub::DescribeAppVersionAppComponentResponse;
  use Moose;
  has AppArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'appArn', required => 1);
  has AppComponent => (is => 'ro', isa => 'Paws::Resiliencehub::AppComponent', traits => ['NameInRequest'], request_name => 'appComponent');
  has AppVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'appVersion', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Resiliencehub::DescribeAppVersionAppComponentResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppArn => Str

Amazon Resource Name (ARN) of the Resilience Hub application. The
format for this ARN is:
arn:C<partition>:resiliencehub:C<region>:C<account>:app/C<app-id>. For
more information about ARNs, see Amazon Resource Names (ARNs)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
in the I<Amazon Web Services General Reference> guide.


=head2 AppComponent => L<Paws::Resiliencehub::AppComponent>

List of Application Components that belong to this resource.


=head2 B<REQUIRED> AppVersion => Str

Resilience Hub application version.


=head2 _request_id => Str


=cut

