package Paws::Account;
  use Moose;
  sub service { 'account' }
  sub signing_name { 'account' }
  sub version { '2021-02-01' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub AcceptPrimaryEmailUpdate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Account::AcceptPrimaryEmailUpdate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAlternateContact {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Account::DeleteAlternateContact', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisableRegion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Account::DisableRegion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EnableRegion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Account::EnableRegion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAccountInformation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Account::GetAccountInformation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAlternateContact {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Account::GetAlternateContact', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetContactInformation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Account::GetContactInformation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPrimaryEmail {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Account::GetPrimaryEmail', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRegionOptStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Account::GetRegionOptStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRegions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Account::ListRegions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutAccountName {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Account::PutAccountName', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutAlternateContact {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Account::PutAlternateContact', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutContactInformation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Account::PutContactInformation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartPrimaryEmailUpdate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Account::StartPrimaryEmailUpdate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllRegions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListRegions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListRegions(@_, NextToken => $next_result->NextToken);
        push @{ $result->Regions }, @{ $next_result->Regions };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Regions') foreach (@{ $result->Regions });
        $result = $self->ListRegions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Regions') foreach (@{ $result->Regions });
    }

    return undef
  }


  sub operations { qw/AcceptPrimaryEmailUpdate DeleteAlternateContact DisableRegion EnableRegion GetAccountInformation GetAlternateContact GetContactInformation GetPrimaryEmail GetRegionOptStatus ListRegions PutAccountName PutAlternateContact PutContactInformation StartPrimaryEmailUpdate / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Account - Perl Interface to AWS AWS Account

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Account');
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

Operations for Amazon Web Services Account Management

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/account-2021-02-01>


=head1 METHODS

=head2 AcceptPrimaryEmailUpdate

=over

=item AccountId => Str

=item Otp => Str

=item PrimaryEmail => Str


=back

Each argument is described in detail in: L<Paws::Account::AcceptPrimaryEmailUpdate>

Returns: a L<Paws::Account::AcceptPrimaryEmailUpdateResponse> instance

Accepts the request that originated from StartPrimaryEmailUpdate to
update the primary email address (also known as the root user email
address) for the specified account.


=head2 DeleteAlternateContact

=over

=item AlternateContactType => Str

=item [AccountId => Str]


=back

Each argument is described in detail in: L<Paws::Account::DeleteAlternateContact>

Returns: nothing

Deletes the specified alternate contact from an Amazon Web Services
account.

For complete details about how to use the alternate contact operations,
see Access or updating the alternate contacts
(https://docs.aws.amazon.com/accounts/latest/reference/manage-acct-update-contact.html).

Before you can update the alternate contact information for an Amazon
Web Services account that is managed by Organizations, you must first
enable integration between Amazon Web Services Account Management and
Organizations. For more information, see Enabling trusted access for
Amazon Web Services Account Management
(https://docs.aws.amazon.com/accounts/latest/reference/using-orgs-trusted-access.html).


=head2 DisableRegion

=over

=item RegionName => Str

=item [AccountId => Str]


=back

Each argument is described in detail in: L<Paws::Account::DisableRegion>

Returns: nothing

Disables (opts-out) a particular Region for an account.

The act of disabling a Region will remove all IAM access to any
resources that reside in that Region.


=head2 EnableRegion

=over

=item RegionName => Str

=item [AccountId => Str]


=back

Each argument is described in detail in: L<Paws::Account::EnableRegion>

Returns: nothing

Enables (opts-in) a particular Region for an account.


=head2 GetAccountInformation

=over

=item [AccountId => Str]


=back

Each argument is described in detail in: L<Paws::Account::GetAccountInformation>

Returns: a L<Paws::Account::GetAccountInformationResponse> instance

Retrieves information about the specified account including its account
name, account ID, and account creation date and time. To use this API,
an IAM user or role must have the C<account:GetAccountInformation> IAM
permission.


=head2 GetAlternateContact

=over

=item AlternateContactType => Str

=item [AccountId => Str]


=back

Each argument is described in detail in: L<Paws::Account::GetAlternateContact>

Returns: a L<Paws::Account::GetAlternateContactResponse> instance

Retrieves the specified alternate contact attached to an Amazon Web
Services account.

For complete details about how to use the alternate contact operations,
see Access or updating the alternate contacts
(https://docs.aws.amazon.com/accounts/latest/reference/manage-acct-update-contact.html).

Before you can update the alternate contact information for an Amazon
Web Services account that is managed by Organizations, you must first
enable integration between Amazon Web Services Account Management and
Organizations. For more information, see Enabling trusted access for
Amazon Web Services Account Management
(https://docs.aws.amazon.com/accounts/latest/reference/using-orgs-trusted-access.html).


=head2 GetContactInformation

=over

=item [AccountId => Str]


=back

Each argument is described in detail in: L<Paws::Account::GetContactInformation>

Returns: a L<Paws::Account::GetContactInformationResponse> instance

Retrieves the primary contact information of an Amazon Web Services
account.

For complete details about how to use the primary contact operations,
see Update the primary and alternate contact information
(https://docs.aws.amazon.com/accounts/latest/reference/manage-acct-update-contact.html).


=head2 GetPrimaryEmail

=over

=item AccountId => Str


=back

Each argument is described in detail in: L<Paws::Account::GetPrimaryEmail>

Returns: a L<Paws::Account::GetPrimaryEmailResponse> instance

Retrieves the primary email address for the specified account.


=head2 GetRegionOptStatus

=over

=item RegionName => Str

=item [AccountId => Str]


=back

Each argument is described in detail in: L<Paws::Account::GetRegionOptStatus>

Returns: a L<Paws::Account::GetRegionOptStatusResponse> instance

Retrieves the opt-in status of a particular Region.


=head2 ListRegions

=over

=item [AccountId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [RegionOptStatusContains => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::Account::ListRegions>

Returns: a L<Paws::Account::ListRegionsResponse> instance

Lists all the Regions for a given account and their respective opt-in
statuses. Optionally, this list can be filtered by the
C<region-opt-status-contains> parameter.


=head2 PutAccountName

=over

=item AccountName => Str

=item [AccountId => Str]


=back

Each argument is described in detail in: L<Paws::Account::PutAccountName>

Returns: nothing

Updates the account name of the specified account. To use this API, IAM
principals must have the C<account:PutAccountName> IAM permission.


=head2 PutAlternateContact

=over

=item AlternateContactType => Str

=item EmailAddress => Str

=item Name => Str

=item PhoneNumber => Str

=item Title => Str

=item [AccountId => Str]


=back

Each argument is described in detail in: L<Paws::Account::PutAlternateContact>

Returns: nothing

Modifies the specified alternate contact attached to an Amazon Web
Services account.

For complete details about how to use the alternate contact operations,
see Access or updating the alternate contacts
(https://docs.aws.amazon.com/accounts/latest/reference/manage-acct-update-contact.html).

Before you can update the alternate contact information for an Amazon
Web Services account that is managed by Organizations, you must first
enable integration between Amazon Web Services Account Management and
Organizations. For more information, see Enabling trusted access for
Amazon Web Services Account Management
(https://docs.aws.amazon.com/accounts/latest/reference/using-orgs-trusted-access.html).


=head2 PutContactInformation

=over

=item ContactInformation => L<Paws::Account::ContactInformation>

=item [AccountId => Str]


=back

Each argument is described in detail in: L<Paws::Account::PutContactInformation>

Returns: nothing

Updates the primary contact information of an Amazon Web Services
account.

For complete details about how to use the primary contact operations,
see Update the primary and alternate contact information
(https://docs.aws.amazon.com/accounts/latest/reference/manage-acct-update-contact.html).


=head2 StartPrimaryEmailUpdate

=over

=item AccountId => Str

=item PrimaryEmail => Str


=back

Each argument is described in detail in: L<Paws::Account::StartPrimaryEmailUpdate>

Returns: a L<Paws::Account::StartPrimaryEmailUpdateResponse> instance

Starts the process to update the primary email address for the
specified account.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllRegions(sub { },[AccountId => Str, MaxResults => Int, NextToken => Str, RegionOptStatusContains => ArrayRef[Str|Undef]])

=head2 ListAllRegions([AccountId => Str, MaxResults => Int, NextToken => Str, RegionOptStatusContains => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Regions, passing the object as the first parameter, and the string 'Regions' as the second parameter 

If not, it will return a a L<Paws::Account::ListRegionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

