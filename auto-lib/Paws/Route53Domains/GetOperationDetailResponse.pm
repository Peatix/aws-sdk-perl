
package Paws::Route53Domains::GetOperationDetailResponse;
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str');
  has LastUpdatedDate => (is => 'ro', isa => 'Str');
  has Message => (is => 'ro', isa => 'Str');
  has OperationId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has StatusFlag => (is => 'ro', isa => 'Str');
  has SubmittedDate => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Route53Domains::GetOperationDetailResponse

=head1 ATTRIBUTES


=head2 DomainName => Str

The name of a domain.


=head2 LastUpdatedDate => Str

The date when the operation was last updated.


=head2 Message => Str

Detailed information on the status including possible errors.


=head2 OperationId => Str

The identifier for the operation.


=head2 Status => Str

The current status of the requested operation in the system.

Valid values are: C<"SUBMITTED">, C<"IN_PROGRESS">, C<"ERROR">, C<"SUCCESSFUL">, C<"FAILED">
=head2 StatusFlag => Str

Lists any outstanding operations that require customer action. Valid
values are:

=over

=item *

C<PENDING_ACCEPTANCE>: The operation is waiting for acceptance from the
account that is receiving the domain.

=item *

C<PENDING_CUSTOMER_ACTION>: The operation is waiting for customer
action, for example, returning an email.

=item *

C<PENDING_AUTHORIZATION>: The operation is waiting for the form of
authorization. For more information, see ResendOperationAuthorization
(https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_ResendOperationAuthorization.html).

=item *

C<PENDING_PAYMENT_VERIFICATION>: The operation is waiting for the
payment method to validate.

=item *

C<PENDING_SUPPORT_CASE>: The operation includes a support case and is
waiting for its resolution.

=back


Valid values are: C<"PENDING_ACCEPTANCE">, C<"PENDING_CUSTOMER_ACTION">, C<"PENDING_AUTHORIZATION">, C<"PENDING_PAYMENT_VERIFICATION">, C<"PENDING_SUPPORT_CASE">
=head2 SubmittedDate => Str

The date when the request was submitted.


=head2 Type => Str

The type of operation that was requested.

Valid values are: C<"REGISTER_DOMAIN">, C<"DELETE_DOMAIN">, C<"TRANSFER_IN_DOMAIN">, C<"UPDATE_DOMAIN_CONTACT">, C<"UPDATE_NAMESERVER">, C<"CHANGE_PRIVACY_PROTECTION">, C<"DOMAIN_LOCK">, C<"ENABLE_AUTORENEW">, C<"DISABLE_AUTORENEW">, C<"ADD_DNSSEC">, C<"REMOVE_DNSSEC">, C<"EXPIRE_DOMAIN">, C<"TRANSFER_OUT_DOMAIN">, C<"CHANGE_DOMAIN_OWNER">, C<"RENEW_DOMAIN">, C<"PUSH_DOMAIN">, C<"INTERNAL_TRANSFER_OUT_DOMAIN">, C<"INTERNAL_TRANSFER_IN_DOMAIN">, C<"RELEASE_TO_GANDI">, C<"TRANSFER_ON_RENEW">, C<"RESTORE_DOMAIN">
=head2 _request_id => Str


=cut

1;