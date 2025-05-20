
package Paws::Resiliencehub::DescribeDraftAppVersionResourcesImportStatusResponse;
  use Moose;
  has AppArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'appArn', required => 1);
  has AppVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'appVersion', required => 1);
  has ErrorDetails => (is => 'ro', isa => 'ArrayRef[Paws::Resiliencehub::ErrorDetail]', traits => ['NameInRequest'], request_name => 'errorDetails');
  has ErrorMessage => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'errorMessage');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);
  has StatusChangeTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'statusChangeTime', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Resiliencehub::DescribeDraftAppVersionResourcesImportStatusResponse

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


=head2 ErrorDetails => ArrayRef[L<Paws::Resiliencehub::ErrorDetail>]

List of errors that were encountered while importing resources.


=head2 ErrorMessage => Str

The error message returned for the resource request.


=head2 B<REQUIRED> Status => Str

Status of the action.

Valid values are: C<"Pending">, C<"InProgress">, C<"Failed">, C<"Success">
=head2 B<REQUIRED> StatusChangeTime => Str

The time when the status last changed.


=head2 _request_id => Str


=cut

