
package Paws::Resiliencehub::ResolveAppVersionResourcesResponse;
  use Moose;
  has AppArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'appArn', required => 1);
  has AppVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'appVersion', required => 1);
  has ResolutionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resolutionId', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Resiliencehub::ResolveAppVersionResourcesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppArn => Str

Amazon Resource Name (ARN) of the Resilience Hub application. The
format for this ARN is:
arn:C<partition>:resiliencehub:C<region>:C<account>:app/C<app-id>. For
more information about ARNs, see Amazon Resource Names (ARNs)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
in the I<Amazon Web Services General Reference> guide.


=head2 B<REQUIRED> AppVersion => Str

The version of the application.


=head2 B<REQUIRED> ResolutionId => Str

The identifier for a specific resolution.


=head2 B<REQUIRED> Status => Str

Status of the action.

Valid values are: C<"Pending">, C<"InProgress">, C<"Failed">, C<"Success">
=head2 _request_id => Str


=cut

