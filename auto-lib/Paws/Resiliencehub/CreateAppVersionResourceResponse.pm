
package Paws::Resiliencehub::CreateAppVersionResourceResponse;
  use Moose;
  has AppArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'appArn', required => 1);
  has AppVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'appVersion', required => 1);
  has PhysicalResource => (is => 'ro', isa => 'Paws::Resiliencehub::PhysicalResource', traits => ['NameInRequest'], request_name => 'physicalResource');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Resiliencehub::CreateAppVersionResourceResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppArn => Str

Amazon Resource Name (ARN) of the Resilience Hub application. The
format for this ARN is:
arn:C<partition>:resiliencehub:C<region>:C<account>:app/C<app-id>. For
more information about ARNs, see Amazon Resource Names (ARNs)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
in the I<Amazon Web Services General Reference> guide.


=head2 B<REQUIRED> AppVersion => Str

Resilience Hub application version.


=head2 PhysicalResource => L<Paws::Resiliencehub::PhysicalResource>

Defines a physical resource. A physical resource is a resource that
exists in your account. It can be identified using an Amazon Resource
Name (ARN) or a Resilience Hub-native identifier.


=head2 _request_id => Str


=cut

