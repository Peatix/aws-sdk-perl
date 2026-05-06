package Paws::Route53Domains;
  use Moose;
  sub service { 'route53domains' }
  sub signing_name { 'route53domains' }
  sub version { '2014-05-15' }
  sub target_prefix { 'Route53Domains_v20140515' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub AcceptDomainTransferFromAnotherAwsAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Domains::AcceptDomainTransferFromAnotherAwsAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateDelegationSignerToDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Domains::AssociateDelegationSignerToDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelDomainTransferToAnotherAwsAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Domains::CancelDomainTransferToAnotherAwsAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CheckDomainAvailability {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Domains::CheckDomainAvailability', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CheckDomainTransferability {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Domains::CheckDomainTransferability', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Domains::DeleteDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTagsForDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Domains::DeleteTagsForDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisableDomainAutoRenew {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Domains::DisableDomainAutoRenew', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisableDomainTransferLock {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Domains::DisableDomainTransferLock', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateDelegationSignerFromDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Domains::DisassociateDelegationSignerFromDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EnableDomainAutoRenew {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Domains::EnableDomainAutoRenew', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EnableDomainTransferLock {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Domains::EnableDomainTransferLock', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetContactReachabilityStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Domains::GetContactReachabilityStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDomainDetail {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Domains::GetDomainDetail', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDomainSuggestions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Domains::GetDomainSuggestions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetOperationDetail {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Domains::GetOperationDetail', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDomains {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Domains::ListDomains', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListOperations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Domains::ListOperations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPrices {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Domains::ListPrices', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Domains::ListTagsForDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PushDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Domains::PushDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RegisterDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Domains::RegisterDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RejectDomainTransferFromAnotherAwsAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Domains::RejectDomainTransferFromAnotherAwsAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RenewDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Domains::RenewDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ResendContactReachabilityEmail {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Domains::ResendContactReachabilityEmail', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ResendOperationAuthorization {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Domains::ResendOperationAuthorization', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RetrieveDomainAuthCode {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Domains::RetrieveDomainAuthCode', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TransferDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Domains::TransferDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TransferDomainToAnotherAwsAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Domains::TransferDomainToAnotherAwsAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDomainContact {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Domains::UpdateDomainContact', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDomainContactPrivacy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Domains::UpdateDomainContactPrivacy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDomainNameservers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Domains::UpdateDomainNameservers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateTagsForDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Domains::UpdateTagsForDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ViewBilling {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Route53Domains::ViewBilling', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllDomains {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDomains(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextPageMarker) {
        $next_result = $self->ListDomains(@_, Marker => $next_result->NextPageMarker);
        push @{ $result->Domains }, @{ $next_result->Domains };
      }
      return $result;
    } else {
      while ($result->NextPageMarker) {
        $callback->($_ => 'Domains') foreach (@{ $result->Domains });
        $result = $self->ListDomains(@_, Marker => $result->NextPageMarker);
      }
      $callback->($_ => 'Domains') foreach (@{ $result->Domains });
    }

    return undef
  }
  sub ListAllOperations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListOperations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextPageMarker) {
        $next_result = $self->ListOperations(@_, Marker => $next_result->NextPageMarker);
        push @{ $result->Operations }, @{ $next_result->Operations };
      }
      return $result;
    } else {
      while ($result->NextPageMarker) {
        $callback->($_ => 'Operations') foreach (@{ $result->Operations });
        $result = $self->ListOperations(@_, Marker => $result->NextPageMarker);
      }
      $callback->($_ => 'Operations') foreach (@{ $result->Operations });
    }

    return undef
  }
  sub ListAllPrices {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPrices(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextPageMarker) {
        $next_result = $self->ListPrices(@_, Marker => $next_result->NextPageMarker);
        push @{ $result->Prices }, @{ $next_result->Prices };
      }
      return $result;
    } else {
      while ($result->NextPageMarker) {
        $callback->($_ => 'Prices') foreach (@{ $result->Prices });
        $result = $self->ListPrices(@_, Marker => $result->NextPageMarker);
      }
      $callback->($_ => 'Prices') foreach (@{ $result->Prices });
    }

    return undef
  }
  sub ViewAllBilling {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ViewBilling(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextPageMarker) {
        $next_result = $self->ViewBilling(@_, Marker => $next_result->NextPageMarker);
        push @{ $result->BillingRecords }, @{ $next_result->BillingRecords };
      }
      return $result;
    } else {
      while ($result->NextPageMarker) {
        $callback->($_ => 'BillingRecords') foreach (@{ $result->BillingRecords });
        $result = $self->ViewBilling(@_, Marker => $result->NextPageMarker);
      }
      $callback->($_ => 'BillingRecords') foreach (@{ $result->BillingRecords });
    }

    return undef
  }


  sub operations { qw/AcceptDomainTransferFromAnotherAwsAccount AssociateDelegationSignerToDomain CancelDomainTransferToAnotherAwsAccount CheckDomainAvailability CheckDomainTransferability DeleteDomain DeleteTagsForDomain DisableDomainAutoRenew DisableDomainTransferLock DisassociateDelegationSignerFromDomain EnableDomainAutoRenew EnableDomainTransferLock GetContactReachabilityStatus GetDomainDetail GetDomainSuggestions GetOperationDetail ListDomains ListOperations ListPrices ListTagsForDomain PushDomain RegisterDomain RejectDomainTransferFromAnotherAwsAccount RenewDomain ResendContactReachabilityEmail ResendOperationAuthorization RetrieveDomainAuthCode TransferDomain TransferDomainToAnotherAwsAccount UpdateDomainContact UpdateDomainContactPrivacy UpdateDomainNameservers UpdateTagsForDomain ViewBilling / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Domains - Perl Interface to AWS Amazon Route 53 Domains

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Route53Domains');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

Amazon Route 53 API actions let you register domain names and perform
related operations.

For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 AcceptDomainTransferFromAnotherAwsAccount

=over

=item DomainName => Str

=item Password => Str


=back

Each argument is described in detail in: L<Paws::Route53Domains::AcceptDomainTransferFromAnotherAwsAccount>

Returns: a L<Paws::Route53Domains::AcceptDomainTransferFromAnotherAwsAccountResponse> instance

Accepts the transfer of a domain from another Amazon Web Services
account to the currentAmazon Web Services account. You initiate a
transfer between Amazon Web Services accounts using
TransferDomainToAnotherAwsAccount
(https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_TransferDomainToAnotherAwsAccount.html).

If you use the CLI command at
accept-domain-transfer-from-another-aws-account
(https://docs.aws.amazon.com/cli/latest/reference/route53domains/accept-domain-transfer-from-another-aws-account.html),
use JSON format as input instead of text because otherwise CLI will
throw an error from domain transfer input that includes single quotes.

Use either ListOperations
(https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_ListOperations.html)
or GetOperationDetail
(https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html)
to determine whether the operation succeeded. GetOperationDetail
(https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html)
provides additional information, for example, C<Domain Transfer from
Aws Account 111122223333 has been cancelled>.


=head2 AssociateDelegationSignerToDomain

=over

=item DomainName => Str

=item SigningAttributes => L<Paws::Route53Domains::DnssecSigningAttributes>


=back

Each argument is described in detail in: L<Paws::Route53Domains::AssociateDelegationSignerToDomain>

Returns: a L<Paws::Route53Domains::AssociateDelegationSignerToDomainResponse> instance

Creates a delegation signer (DS) record in the registry zone for this
domain name.

Note that creating DS record at the registry impacts DNSSEC validation
of your DNS records. This action may render your domain name
unavailable on the internet if the steps are completed in the wrong
order, or with incorrect timing. For more information about DNSSEC
signing, see Configuring DNSSEC signing
(https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-configuring-dnssec.html)
in the I<Route 53 developer guide>.


=head2 CancelDomainTransferToAnotherAwsAccount

=over

=item DomainName => Str


=back

Each argument is described in detail in: L<Paws::Route53Domains::CancelDomainTransferToAnotherAwsAccount>

Returns: a L<Paws::Route53Domains::CancelDomainTransferToAnotherAwsAccountResponse> instance

Cancels the transfer of a domain from the current Amazon Web Services
account to another Amazon Web Services account. You initiate a transfer
betweenAmazon Web Services accounts using
TransferDomainToAnotherAwsAccount
(https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_TransferDomainToAnotherAwsAccount.html).

You must cancel the transfer before the other Amazon Web Services
account accepts the transfer using
AcceptDomainTransferFromAnotherAwsAccount
(https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_AcceptDomainTransferFromAnotherAwsAccount.html).

Use either ListOperations
(https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_ListOperations.html)
or GetOperationDetail
(https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html)
to determine whether the operation succeeded. GetOperationDetail
(https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html)
provides additional information, for example, C<Domain Transfer from
Aws Account 111122223333 has been cancelled>.


=head2 CheckDomainAvailability

=over

=item DomainName => Str

=item [IdnLangCode => Str]


=back

Each argument is described in detail in: L<Paws::Route53Domains::CheckDomainAvailability>

Returns: a L<Paws::Route53Domains::CheckDomainAvailabilityResponse> instance

This operation checks the availability of one domain name. Note that if
the availability status of a domain is pending, you must submit another
request to determine the availability of the domain name.


=head2 CheckDomainTransferability

=over

=item DomainName => Str

=item [AuthCode => Str]


=back

Each argument is described in detail in: L<Paws::Route53Domains::CheckDomainTransferability>

Returns: a L<Paws::Route53Domains::CheckDomainTransferabilityResponse> instance

Checks whether a domain name can be transferred to Amazon Route 53.


=head2 DeleteDomain

=over

=item DomainName => Str


=back

Each argument is described in detail in: L<Paws::Route53Domains::DeleteDomain>

Returns: a L<Paws::Route53Domains::DeleteDomainResponse> instance

This operation deletes the specified domain. This action is permanent.
For more information, see Deleting a domain name registration
(https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/domain-delete.html).

To transfer the domain registration to another registrar, use the
transfer process thatE<rsquo>s provided by the registrar to which you
want to transfer the registration. Otherwise, the following apply:

=over

=item 1.

You canE<rsquo>t get a refund for the cost of a deleted domain
registration.

=item 2.

The registry for the top-level domain might hold the domain name for a
brief time before releasing it for other users to register (varies by
registry).

=item 3.

When the registration has been deleted, we'll send you a confirmation
to the registrant contact. The email will come from
C<noreply@domainnameverification.net> or
C<noreply@registrar.amazon.com>.

=back



=head2 DeleteTagsForDomain

=over

=item DomainName => Str

=item TagsToDelete => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Route53Domains::DeleteTagsForDomain>

Returns: a L<Paws::Route53Domains::DeleteTagsForDomainResponse> instance

This operation deletes the specified tags for a domain.

All tag operations are eventually consistent; subsequent operations
might not immediately represent all issued operations.


=head2 DisableDomainAutoRenew

=over

=item DomainName => Str


=back

Each argument is described in detail in: L<Paws::Route53Domains::DisableDomainAutoRenew>

Returns: a L<Paws::Route53Domains::DisableDomainAutoRenewResponse> instance

This operation disables automatic renewal of domain registration for
the specified domain.


=head2 DisableDomainTransferLock

=over

=item DomainName => Str


=back

Each argument is described in detail in: L<Paws::Route53Domains::DisableDomainTransferLock>

Returns: a L<Paws::Route53Domains::DisableDomainTransferLockResponse> instance

This operation removes the transfer lock on the domain (specifically
the C<clientTransferProhibited> status) to allow domain transfers. We
recommend you refrain from performing this action unless you intend to
transfer the domain to a different registrar. Successful submission
returns an operation ID that you can use to track the progress and
completion of the action. If the request is not completed successfully,
the domain registrant will be notified by email.


=head2 DisassociateDelegationSignerFromDomain

=over

=item DomainName => Str

=item Id => Str


=back

Each argument is described in detail in: L<Paws::Route53Domains::DisassociateDelegationSignerFromDomain>

Returns: a L<Paws::Route53Domains::DisassociateDelegationSignerFromDomainResponse> instance

Deletes a delegation signer (DS) record in the registry zone for this
domain name.


=head2 EnableDomainAutoRenew

=over

=item DomainName => Str


=back

Each argument is described in detail in: L<Paws::Route53Domains::EnableDomainAutoRenew>

Returns: a L<Paws::Route53Domains::EnableDomainAutoRenewResponse> instance

This operation configures Amazon Route 53 to automatically renew the
specified domain before the domain registration expires. The cost of
renewing your domain registration is billed to your Amazon Web Services
account.

The period during which you can renew a domain name varies by TLD. For
a list of TLDs and their renewal policies, see Domains That You Can
Register with Amazon Route 53
(https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html)
in the I<Amazon Route 53 Developer Guide>. Route 53 requires that you
renew before the end of the renewal period so we can complete
processing before the deadline.


=head2 EnableDomainTransferLock

=over

=item DomainName => Str


=back

Each argument is described in detail in: L<Paws::Route53Domains::EnableDomainTransferLock>

Returns: a L<Paws::Route53Domains::EnableDomainTransferLockResponse> instance

This operation sets the transfer lock on the domain (specifically the
C<clientTransferProhibited> status) to prevent domain transfers.
Successful submission returns an operation ID that you can use to track
the progress and completion of the action. If the request is not
completed successfully, the domain registrant will be notified by
email.


=head2 GetContactReachabilityStatus

=over

=item [DomainName => Str]


=back

Each argument is described in detail in: L<Paws::Route53Domains::GetContactReachabilityStatus>

Returns: a L<Paws::Route53Domains::GetContactReachabilityStatusResponse> instance

For operations that require confirmation that the email address for the
registrant contact is valid, such as registering a new domain, this
operation returns information about whether the registrant contact has
responded.

If you want us to resend the email, use the
C<ResendContactReachabilityEmail> operation.


=head2 GetDomainDetail

=over

=item DomainName => Str


=back

Each argument is described in detail in: L<Paws::Route53Domains::GetDomainDetail>

Returns: a L<Paws::Route53Domains::GetDomainDetailResponse> instance

This operation returns detailed information about a specified domain
that is associated with the current Amazon Web Services account.
Contact information for the domain is also returned as part of the
output.


=head2 GetDomainSuggestions

=over

=item DomainName => Str

=item OnlyAvailable => Bool

=item SuggestionCount => Int


=back

Each argument is described in detail in: L<Paws::Route53Domains::GetDomainSuggestions>

Returns: a L<Paws::Route53Domains::GetDomainSuggestionsResponse> instance

The GetDomainSuggestions operation returns a list of suggested domain
names.


=head2 GetOperationDetail

=over

=item OperationId => Str


=back

Each argument is described in detail in: L<Paws::Route53Domains::GetOperationDetail>

Returns: a L<Paws::Route53Domains::GetOperationDetailResponse> instance

This operation returns the current status of an operation that is not
completed.


=head2 ListDomains

=over

=item [FilterConditions => ArrayRef[L<Paws::Route53Domains::FilterCondition>]]

=item [Marker => Str]

=item [MaxItems => Int]

=item [SortCondition => L<Paws::Route53Domains::SortCondition>]


=back

Each argument is described in detail in: L<Paws::Route53Domains::ListDomains>

Returns: a L<Paws::Route53Domains::ListDomainsResponse> instance

This operation returns all the domain names registered with Amazon
Route 53 for the current Amazon Web Services account if no filtering
conditions are used.


=head2 ListOperations

=over

=item [Marker => Str]

=item [MaxItems => Int]

=item [SortBy => Str]

=item [SortOrder => Str]

=item [Status => ArrayRef[Str|Undef]]

=item [SubmittedSince => Str]

=item [Type => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::Route53Domains::ListOperations>

Returns: a L<Paws::Route53Domains::ListOperationsResponse> instance

Returns information about all of the operations that return an
operation ID and that have ever been performed on domains that were
registered by the current account.

This command runs only in the us-east-1 Region.


=head2 ListPrices

=over

=item [Marker => Str]

=item [MaxItems => Int]

=item [Tld => Str]


=back

Each argument is described in detail in: L<Paws::Route53Domains::ListPrices>

Returns: a L<Paws::Route53Domains::ListPricesResponse> instance

Lists the following prices for either all the TLDs supported by Route
53, or the specified TLD:

=over

=item *

Registration

=item *

Transfer

=item *

Owner change

=item *

Domain renewal

=item *

Domain restoration

=back



=head2 ListTagsForDomain

=over

=item DomainName => Str


=back

Each argument is described in detail in: L<Paws::Route53Domains::ListTagsForDomain>

Returns: a L<Paws::Route53Domains::ListTagsForDomainResponse> instance

This operation returns all of the tags that are associated with the
specified domain.

All tag operations are eventually consistent; subsequent operations
might not immediately represent all issued operations.


=head2 PushDomain

=over

=item DomainName => Str

=item Target => Str


=back

Each argument is described in detail in: L<Paws::Route53Domains::PushDomain>

Returns: nothing

Moves a domain from Amazon Web Services to another registrar.

Supported actions:

=over

=item *

Changes the IPS tags of a .uk domain, and pushes it to transit. Transit
means that the domain is ready to be transferred to another registrar.

=back



=head2 RegisterDomain

=over

=item AdminContact => L<Paws::Route53Domains::ContactDetail>

=item DomainName => Str

=item DurationInYears => Int

=item RegistrantContact => L<Paws::Route53Domains::ContactDetail>

=item TechContact => L<Paws::Route53Domains::ContactDetail>

=item [AutoRenew => Bool]

=item [BillingContact => L<Paws::Route53Domains::ContactDetail>]

=item [IdnLangCode => Str]

=item [PrivacyProtectAdminContact => Bool]

=item [PrivacyProtectBillingContact => Bool]

=item [PrivacyProtectRegistrantContact => Bool]

=item [PrivacyProtectTechContact => Bool]


=back

Each argument is described in detail in: L<Paws::Route53Domains::RegisterDomain>

Returns: a L<Paws::Route53Domains::RegisterDomainResponse> instance

This operation registers a domain. For some top-level domains (TLDs),
this operation requires extra parameters.

When you register a domain, Amazon Route 53 does the following:

=over

=item *

Creates a Route 53 hosted zone that has the same name as the domain.
Route 53 assigns four name servers to your hosted zone and
automatically updates your domain registration with the names of these
name servers.

=item *

Enables auto renew, so your domain registration will renew
automatically each year. We'll notify you in advance of the renewal
date so you can choose whether to renew the registration.

=item *

Optionally enables privacy protection, so WHOIS queries return contact
for the registrar or the phrase "REDACTED FOR PRIVACY", or "On behalf
of E<lt>domain nameE<gt> owner." If you don't enable privacy
protection, WHOIS queries return the information that you entered for
the administrative, registrant, and technical contacts.

While some domains may allow different privacy settings per contact, we
recommend specifying the same privacy setting for all contacts.

=item *

If registration is successful, returns an operation ID that you can use
to track the progress and completion of the action. If the request is
not completed successfully, the domain registrant is notified by email.

=item *

Charges your Amazon Web Services account an amount based on the
top-level domain. For more information, see Amazon Route 53 Pricing
(http://aws.amazon.com/route53/pricing/).

=back



=head2 RejectDomainTransferFromAnotherAwsAccount

=over

=item DomainName => Str


=back

Each argument is described in detail in: L<Paws::Route53Domains::RejectDomainTransferFromAnotherAwsAccount>

Returns: a L<Paws::Route53Domains::RejectDomainTransferFromAnotherAwsAccountResponse> instance

Rejects the transfer of a domain from another Amazon Web Services
account to the current Amazon Web Services account. You initiate a
transfer betweenAmazon Web Services accounts using
TransferDomainToAnotherAwsAccount
(https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_TransferDomainToAnotherAwsAccount.html).

Use either ListOperations
(https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_ListOperations.html)
or GetOperationDetail
(https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html)
to determine whether the operation succeeded. GetOperationDetail
(https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html)
provides additional information, for example, C<Domain Transfer from
Aws Account 111122223333 has been cancelled>.


=head2 RenewDomain

=over

=item CurrentExpiryYear => Int

=item DomainName => Str

=item [DurationInYears => Int]


=back

Each argument is described in detail in: L<Paws::Route53Domains::RenewDomain>

Returns: a L<Paws::Route53Domains::RenewDomainResponse> instance

This operation renews a domain for the specified number of years. The
cost of renewing your domain is billed to your Amazon Web Services
account.

We recommend that you renew your domain several weeks before the
expiration date. Some TLD registries delete domains before the
expiration date if you haven't renewed far enough in advance. For more
information about renewing domain registration, see Renewing
Registration for a Domain
(https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/domain-renew.html)
in the I<Amazon Route 53 Developer Guide>.


=head2 ResendContactReachabilityEmail

=over

=item [DomainName => Str]


=back

Each argument is described in detail in: L<Paws::Route53Domains::ResendContactReachabilityEmail>

Returns: a L<Paws::Route53Domains::ResendContactReachabilityEmailResponse> instance

For operations that require confirmation that the email address for the
registrant contact is valid, such as registering a new domain, this
operation resends the confirmation email to the current email address
for the registrant contact.


=head2 ResendOperationAuthorization

=over

=item OperationId => Str


=back

Each argument is described in detail in: L<Paws::Route53Domains::ResendOperationAuthorization>

Returns: nothing

Resend the form of authorization email for this operation.


=head2 RetrieveDomainAuthCode

=over

=item DomainName => Str


=back

Each argument is described in detail in: L<Paws::Route53Domains::RetrieveDomainAuthCode>

Returns: a L<Paws::Route53Domains::RetrieveDomainAuthCodeResponse> instance

This operation returns the authorization code for the domain. To
transfer a domain to another registrar, you provide this value to the
new registrar.


=head2 TransferDomain

=over

=item AdminContact => L<Paws::Route53Domains::ContactDetail>

=item DomainName => Str

=item DurationInYears => Int

=item RegistrantContact => L<Paws::Route53Domains::ContactDetail>

=item TechContact => L<Paws::Route53Domains::ContactDetail>

=item [AuthCode => Str]

=item [AutoRenew => Bool]

=item [BillingContact => L<Paws::Route53Domains::ContactDetail>]

=item [IdnLangCode => Str]

=item [Nameservers => ArrayRef[L<Paws::Route53Domains::Nameserver>]]

=item [PrivacyProtectAdminContact => Bool]

=item [PrivacyProtectBillingContact => Bool]

=item [PrivacyProtectRegistrantContact => Bool]

=item [PrivacyProtectTechContact => Bool]


=back

Each argument is described in detail in: L<Paws::Route53Domains::TransferDomain>

Returns: a L<Paws::Route53Domains::TransferDomainResponse> instance

Transfers a domain from another registrar to Amazon Route 53.

For more information about transferring domains, see the following
topics:

=over

=item *

For transfer requirements, a detailed procedure, and information about
viewing the status of a domain that you're transferring to Route 53,
see Transferring Registration for a Domain to Amazon Route 53
(https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/domain-transfer-to-route-53.html)
in the I<Amazon Route 53 Developer Guide>.

=item *

For information about how to transfer a domain from one Amazon Web
Services account to another, see TransferDomainToAnotherAwsAccount
(https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_TransferDomainToAnotherAwsAccount.html).

=item *

For information about how to transfer a domain to another domain
registrar, see Transferring a Domain from Amazon Route 53 to Another
Registrar
(https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/domain-transfer-from-route-53.html)
in the I<Amazon Route 53 Developer Guide>.

=back

During the transfer of any country code top-level domains (ccTLDs) to
Route 53, except for .cc and .tv, updates to the owner contact are
ignored and the owner contact data from the registry is used. You can
update the owner contact after the transfer is complete. For more
information, see UpdateDomainContact
(https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_UpdateDomainContact.html).

If the registrar for your domain is also the DNS service provider for
the domain, we highly recommend that you transfer your DNS service to
Route 53 or to another DNS service provider before you transfer your
registration. Some registrars provide free DNS service when you
purchase a domain registration. When you transfer the registration, the
previous registrar will not renew your domain registration and could
end your DNS service at any time.

If the registrar for your domain is also the DNS service provider for
the domain and you don't transfer DNS service to another provider, your
website, email, and the web applications associated with the domain
might become unavailable.

If the transfer is successful, this method returns an operation ID that
you can use to track the progress and completion of the action. If the
transfer doesn't complete successfully, the domain registrant will be
notified by email.


=head2 TransferDomainToAnotherAwsAccount

=over

=item AccountId => Str

=item DomainName => Str


=back

Each argument is described in detail in: L<Paws::Route53Domains::TransferDomainToAnotherAwsAccount>

Returns: a L<Paws::Route53Domains::TransferDomainToAnotherAwsAccountResponse> instance

Transfers a domain from the current Amazon Web Services account to
another Amazon Web Services account. Note the following:

=over

=item *

The Amazon Web Services account that you're transferring the domain to
must accept the transfer. If the other account doesn't accept the
transfer within 3 days, we cancel the transfer. See
AcceptDomainTransferFromAnotherAwsAccount
(https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_AcceptDomainTransferFromAnotherAwsAccount.html).

=item *

You can cancel the transfer before the other account accepts it. See
CancelDomainTransferToAnotherAwsAccount
(https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_CancelDomainTransferToAnotherAwsAccount.html).

=item *

The other account can reject the transfer. See
RejectDomainTransferFromAnotherAwsAccount
(https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_RejectDomainTransferFromAnotherAwsAccount.html).

=back

When you transfer a domain from one Amazon Web Services account to
another, Route 53 doesn't transfer the hosted zone that is associated
with the domain. DNS resolution isn't affected if the domain and the
hosted zone are owned by separate accounts, so transferring the hosted
zone is optional. For information about transferring the hosted zone to
another Amazon Web Services account, see Migrating a Hosted Zone to a
Different Amazon Web Services Account
(https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/hosted-zones-migrating.html)
in the I<Amazon Route 53 Developer Guide>.

Use either ListOperations
(https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_ListOperations.html)
or GetOperationDetail
(https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html)
to determine whether the operation succeeded. GetOperationDetail
(https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html)
provides additional information, for example, C<Domain Transfer from
Aws Account 111122223333 has been cancelled>.


=head2 UpdateDomainContact

=over

=item DomainName => Str

=item [AdminContact => L<Paws::Route53Domains::ContactDetail>]

=item [BillingContact => L<Paws::Route53Domains::ContactDetail>]

=item [Consent => L<Paws::Route53Domains::Consent>]

=item [RegistrantContact => L<Paws::Route53Domains::ContactDetail>]

=item [TechContact => L<Paws::Route53Domains::ContactDetail>]


=back

Each argument is described in detail in: L<Paws::Route53Domains::UpdateDomainContact>

Returns: a L<Paws::Route53Domains::UpdateDomainContactResponse> instance

This operation updates the contact information for a particular domain.
You must specify information for at least one contact: registrant,
administrator, or technical.

If the update is successful, this method returns an operation ID that
you can use to track the progress and completion of the operation. If
the request is not completed successfully, the domain registrant will
be notified by email.


=head2 UpdateDomainContactPrivacy

=over

=item DomainName => Str

=item [AdminPrivacy => Bool]

=item [BillingPrivacy => Bool]

=item [RegistrantPrivacy => Bool]

=item [TechPrivacy => Bool]


=back

Each argument is described in detail in: L<Paws::Route53Domains::UpdateDomainContactPrivacy>

Returns: a L<Paws::Route53Domains::UpdateDomainContactPrivacyResponse> instance

This operation updates the specified domain contact's privacy setting.
When privacy protection is enabled, your contact information is
replaced with contact information for the registrar or with the phrase
"REDACTED FOR PRIVACY", or "On behalf of E<lt>domain nameE<gt> owner."

While some domains may allow different privacy settings per contact, we
recommend specifying the same privacy setting for all contacts.

This operation affects only the contact information for the specified
contact type (administrative, registrant, or technical). If the request
succeeds, Amazon Route 53 returns an operation ID that you can use with
GetOperationDetail
(https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html)
to track the progress and completion of the action. If the request
doesn't complete successfully, the domain registrant will be notified
by email.

By disabling the privacy service via API, you consent to the
publication of the contact information provided for this domain via the
public WHOIS database. You certify that you are the registrant of this
domain name and have the authority to make this decision. You may
withdraw your consent at any time by enabling privacy protection using
either C<UpdateDomainContactPrivacy> or the Route 53 console. Enabling
privacy protection removes the contact information provided for this
domain from the WHOIS database. For more information on our privacy
practices, see https://aws.amazon.com/privacy/
(https://aws.amazon.com/privacy/).


=head2 UpdateDomainNameservers

=over

=item DomainName => Str

=item Nameservers => ArrayRef[L<Paws::Route53Domains::Nameserver>]

=item [FIAuthKey => Str]


=back

Each argument is described in detail in: L<Paws::Route53Domains::UpdateDomainNameservers>

Returns: a L<Paws::Route53Domains::UpdateDomainNameserversResponse> instance

This operation replaces the current set of name servers for the domain
with the specified set of name servers. If you use Amazon Route 53 as
your DNS service, specify the four name servers in the delegation set
for the hosted zone for the domain.

If successful, this operation returns an operation ID that you can use
to track the progress and completion of the action. If the request is
not completed successfully, the domain registrant will be notified by
email.


=head2 UpdateTagsForDomain

=over

=item DomainName => Str

=item [TagsToUpdate => ArrayRef[L<Paws::Route53Domains::Tag>]]


=back

Each argument is described in detail in: L<Paws::Route53Domains::UpdateTagsForDomain>

Returns: a L<Paws::Route53Domains::UpdateTagsForDomainResponse> instance

This operation adds or updates tags for a specified domain.

All tag operations are eventually consistent; subsequent operations
might not immediately represent all issued operations.


=head2 ViewBilling

=over

=item [End => Str]

=item [Marker => Str]

=item [MaxItems => Int]

=item [Start => Str]


=back

Each argument is described in detail in: L<Paws::Route53Domains::ViewBilling>

Returns: a L<Paws::Route53Domains::ViewBillingResponse> instance

Returns all the domain-related billing records for the current Amazon
Web Services account for a specified period




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllDomains(sub { },[FilterConditions => ArrayRef[L<Paws::Route53Domains::FilterCondition>], Marker => Str, MaxItems => Int, SortCondition => L<Paws::Route53Domains::SortCondition>])

=head2 ListAllDomains([FilterConditions => ArrayRef[L<Paws::Route53Domains::FilterCondition>], Marker => Str, MaxItems => Int, SortCondition => L<Paws::Route53Domains::SortCondition>])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Domains, passing the object as the first parameter, and the string 'Domains' as the second parameter 

If not, it will return a a L<Paws::Route53Domains::ListDomainsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllOperations(sub { },[Marker => Str, MaxItems => Int, SortBy => Str, SortOrder => Str, Status => ArrayRef[Str|Undef], SubmittedSince => Str, Type => ArrayRef[Str|Undef]])

=head2 ListAllOperations([Marker => Str, MaxItems => Int, SortBy => Str, SortOrder => Str, Status => ArrayRef[Str|Undef], SubmittedSince => Str, Type => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Operations, passing the object as the first parameter, and the string 'Operations' as the second parameter 

If not, it will return a a L<Paws::Route53Domains::ListOperationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPrices(sub { },[Marker => Str, MaxItems => Int, Tld => Str])

=head2 ListAllPrices([Marker => Str, MaxItems => Int, Tld => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Prices, passing the object as the first parameter, and the string 'Prices' as the second parameter 

If not, it will return a a L<Paws::Route53Domains::ListPricesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ViewAllBilling(sub { },[End => Str, Marker => Str, MaxItems => Int, Start => Str])

=head2 ViewAllBilling([End => Str, Marker => Str, MaxItems => Int, Start => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - BillingRecords, passing the object as the first parameter, and the string 'BillingRecords' as the second parameter 

If not, it will return a a L<Paws::Route53Domains::ViewBillingResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

