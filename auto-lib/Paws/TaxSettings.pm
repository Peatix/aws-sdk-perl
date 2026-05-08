package Paws::TaxSettings;
  use Moose;
  sub service { 'tax' }
  sub signing_name { 'tax' }
  sub version { '2018-05-10' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub BatchDeleteTaxRegistration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::TaxSettings::BatchDeleteTaxRegistration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchGetTaxExemptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::TaxSettings::BatchGetTaxExemptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchPutTaxRegistration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::TaxSettings::BatchPutTaxRegistration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSupplementalTaxRegistration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::TaxSettings::DeleteSupplementalTaxRegistration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTaxRegistration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::TaxSettings::DeleteTaxRegistration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTaxExemptionTypes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::TaxSettings::GetTaxExemptionTypes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTaxInheritance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::TaxSettings::GetTaxInheritance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTaxRegistration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::TaxSettings::GetTaxRegistration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTaxRegistrationDocument {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::TaxSettings::GetTaxRegistrationDocument', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSupplementalTaxRegistrations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::TaxSettings::ListSupplementalTaxRegistrations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTaxExemptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::TaxSettings::ListTaxExemptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTaxRegistrations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::TaxSettings::ListTaxRegistrations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutSupplementalTaxRegistration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::TaxSettings::PutSupplementalTaxRegistration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutTaxExemption {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::TaxSettings::PutTaxExemption', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutTaxInheritance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::TaxSettings::PutTaxInheritance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutTaxRegistration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::TaxSettings::PutTaxRegistration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllSupplementalTaxRegistrations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSupplementalTaxRegistrations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListSupplementalTaxRegistrations(@_, nextToken => $next_result->nextToken);
        push @{ $result->taxRegistrations }, @{ $next_result->taxRegistrations };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'taxRegistrations') foreach (@{ $result->taxRegistrations });
        $result = $self->ListSupplementalTaxRegistrations(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'taxRegistrations') foreach (@{ $result->taxRegistrations });
    }

    return undef
  }
  sub ListAllTaxExemptions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTaxExemptions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListTaxExemptions(@_, nextToken => $next_result->nextToken);
        push @{ $result->taxExemptionDetailsMap }, @{ $next_result->taxExemptionDetailsMap };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'taxExemptionDetailsMap') foreach (@{ $result->taxExemptionDetailsMap });
        $result = $self->ListTaxExemptions(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'taxExemptionDetailsMap') foreach (@{ $result->taxExemptionDetailsMap });
    }

    return undef
  }
  sub ListAllTaxRegistrations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTaxRegistrations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListTaxRegistrations(@_, nextToken => $next_result->nextToken);
        push @{ $result->accountDetails }, @{ $next_result->accountDetails };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'accountDetails') foreach (@{ $result->accountDetails });
        $result = $self->ListTaxRegistrations(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'accountDetails') foreach (@{ $result->accountDetails });
    }

    return undef
  }


  sub operations { qw/BatchDeleteTaxRegistration BatchGetTaxExemptions BatchPutTaxRegistration DeleteSupplementalTaxRegistration DeleteTaxRegistration GetTaxExemptionTypes GetTaxInheritance GetTaxRegistration GetTaxRegistrationDocument ListSupplementalTaxRegistrations ListTaxExemptions ListTaxRegistrations PutSupplementalTaxRegistration PutTaxExemption PutTaxInheritance PutTaxRegistration / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::TaxSettings - Perl Interface to AWS Tax Settings

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('TaxSettings');
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

You can use the tax setting API to programmatically set, modify, and
delete the tax registration number (TRN), associated business legal
name, and address (Collectively referred to as "TRN information"). You
can also programmatically view TRN information and tax addresses ("Tax
profiles").

You can use this API to automate your TRN information settings instead
of manually using the console.

Service Endpoint

=over

=item *

https://tax.us-east-1.amazonaws.com

=back


For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/tax-2018-05-10>


=head1 METHODS

=head2 BatchDeleteTaxRegistration

=over

=item AccountIds => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::TaxSettings::BatchDeleteTaxRegistration>

Returns: a L<Paws::TaxSettings::BatchDeleteTaxRegistrationResponse> instance

Deletes tax registration for multiple accounts in batch. This can be
used to delete tax registrations for up to five accounts in one batch.

This API operation can't be used to delete your tax registration in
Brazil. Use the Payment preferences
(https://console.aws.amazon.com/billing/home#/paymentpreferences/paymentmethods)
page in the Billing and Cost Management console instead.


=head2 BatchGetTaxExemptions

=over

=item AccountIds => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::TaxSettings::BatchGetTaxExemptions>

Returns: a L<Paws::TaxSettings::BatchGetTaxExemptionsResponse> instance

Get the active tax exemptions for a given list of accounts. The IAM
action is C<tax:GetExemptions>.


=head2 BatchPutTaxRegistration

=over

=item AccountIds => ArrayRef[Str|Undef]

=item TaxRegistrationEntry => L<Paws::TaxSettings::TaxRegistrationEntry>


=back

Each argument is described in detail in: L<Paws::TaxSettings::BatchPutTaxRegistration>

Returns: a L<Paws::TaxSettings::BatchPutTaxRegistrationResponse> instance

Adds or updates tax registration for multiple accounts in batch. This
can be used to add or update tax registrations for up to five accounts
in one batch. You can't set a TRN if there's a pending TRN. You'll need
to delete the pending TRN first.

To call this API operation for specific countries, see the following
country-specific requirements.

B<Bangladesh>

=over

=item *

You must specify the tax registration certificate document in the
C<taxRegistrationDocuments> field of the C<VerificationDetails> object.

=back

B<Brazil>

=over

=item *

You must complete the tax registration process in the Payment
preferences
(https://console.aws.amazon.com/billing/home#/paymentpreferences/paymentmethods)
page in the Billing and Cost Management console. After your TRN and
billing address are verified, you can call this API operation.

=item *

For Amazon Web Services accounts created through Organizations, you can
call this API operation when you don't have a billing address.

=back

B<Georgia>

=over

=item *

The valid C<personType> values are C<Physical Person> and C<Business>.

=back

B<Indonesia>

=over

=item *

C<PutTaxRegistration>: The use of this operation to submit tax
information is subject to the Amazon Web Services service terms
(http://aws.amazon.com/service-terms/). By submitting, youE<rsquo>re
providing consent for Amazon Web Services to validate NIK, NPWP, and
NITKU data, provided by you with the Directorate General of Taxes of
Indonesia in accordance with the Minister of Finance Regulation (PMK)
Number 112/PMK.03/2022.

=item *

C<BatchPutTaxRegistration>: The use of this operation to submit tax
information is subject to the Amazon Web Services service terms
(http://aws.amazon.com/service-terms/). By submitting, youE<rsquo>re
providing consent for Amazon Web Services to validate NIK, NPWP, and
NITKU data, provided by you with the Directorate General of Taxes of
Indonesia in accordance with the Minister of Finance Regulation (PMK)
Number 112/PMK.03/2022, through our third-party partner PT Achilles
Advanced Management (OnlinePajak).

=item *

You must specify the C<taxRegistrationNumberType> in the
C<indonesiaAdditionalInfo> field of the C<additionalTaxInformation>
object.

=item *

If you specify C<decisionNumber>, you must specify the
C<ppnExceptionDesignationCode> in the C<indonesiaAdditionalInfo> field
of the C<additionalTaxInformation> object. If the
C<taxRegistrationNumberType> is set to NPWP or NITKU, valid values for
C<ppnExceptionDesignationCode> are either C<01>, C<02>, C<03>, C<07>,
or C<08>.

For other C<taxRegistrationNumberType> values,
C<ppnExceptionDesignationCode> must be either C<01>, C<07>, or C<08>.

=item *

If C<ppnExceptionDesignationCode> is C<07>, you must specify the
C<decisionNumber> in the C<indonesiaAdditionalInfo> field of the
C<additionalTaxInformation> object.

=back

B<Kenya>

=over

=item *

You must specify the C<personType> in the C<kenyaAdditionalInfo> field
of the C<additionalTaxInformation> object.

=item *

If the C<personType> is C<Physical Person>, you must specify the tax
registration certificate document in the C<taxRegistrationDocuments>
field of the C<VerificationDetails> object.

=back

B<Malaysia>

=over

=item *

The sector valid values are C<Business> and C<Individual>.

=item *

C<RegistrationType> valid values are C<NRIC> for individual, and TIN
and sales and service tax (SST) for Business.

=item *

For individual, you can specify the C<taxInformationNumber> in
C<MalaysiaAdditionalInfo> with NRIC type, and a valid C<MyKad> or NRIC
number.

=item *

For business, you must specify a C<businessRegistrationNumber> in
C<MalaysiaAdditionalInfo> with a TIN type and tax identification
number.

=item *

For business resellers, you must specify a
C<businessRegistrationNumber> and C<taxInformationNumber> in
C<MalaysiaAdditionalInfo> with a sales and service tax (SST) type and a
valid SST number.

=item *

For business resellers with service codes, you must specify
C<businessRegistrationNumber>, C<taxInformationNumber>, and distinct
C<serviceTaxCodes> in C<MalaysiaAdditionalInfo> with a SST type and
valid sales and service tax (SST) number. By using this API operation,
Amazon Web Services registers your self-declaration that youE<rsquo>re
an authorized business reseller registered with the Royal Malaysia
Customs Department (RMCD), and have a valid SST number.

=item *

Amazon Web Services reserves the right to seek additional information
and/or take other actions to support your self-declaration as
appropriate.

=item *

Amazon Web Services is currently registered under the following service
tax codes. You must include at least one of the service tax codes in
the service tax code strings to declare yourself as an authorized
registered business reseller.

Taxable service and service tax codes:

Consultancy - 9907061674

Training or coaching service - 9907071685

IT service - 9907101676

Digital services and electronic medium - 9907121690

=back

B<Nepal>

=over

=item *

The sector valid values are C<Business> and C<Individual>.

=back

B<Saudi Arabia>

=over

=item *

For C<address>, you must specify C<addressLine3>.

=back

B<South Korea>

=over

=item *

You must specify the C<certifiedEmailId> and C<legalName> in the
C<TaxRegistrationEntry> object. Use Korean characters for C<legalName>.

=item *

You must specify the C<businessRepresentativeName>, C<itemOfBusiness>,
and C<lineOfBusiness> in the C<southKoreaAdditionalInfo> field of the
C<additionalTaxInformation> object. Use Korean characters for these
fields.

=item *

You must specify the tax registration certificate document in the
C<taxRegistrationDocuments> field of the C<VerificationDetails> object.

=item *

For the C<address> object, use Korean characters for C<addressLine1>,
C<addressLine2> C<city>, C<postalCode>, and C<stateOrRegion>.

=back

B<Spain>

=over

=item *

You must specify the C<registrationType> in the C<spainAdditionalInfo>
field of the C<additionalTaxInformation> object.

=item *

If the C<registrationType> is C<Local>, you must specify the tax
registration certificate document in the C<taxRegistrationDocuments>
field of the C<VerificationDetails> object.

=back

B<Turkey>

=over

=item *

You must specify the C<sector> in the C<taxRegistrationEntry> object.

=item *

If your C<sector> is C<Business>, C<Individual>, or C<Government>:

=over

=item *

Specify the C<taxOffice>. If your C<sector> is C<Individual>, don't
enter this value.

=item *

(Optional) Specify the C<kepEmailId>. If your C<sector> is
C<Individual>, don't enter this value.

=item *

B<Note:> In the B<Tax Settings> page of the Billing console,
C<Government> appears as B<Public institutions>

=back

=item *

If your C<sector> is C<Business> and you're subject to KDV tax, you
must specify your industry in the C<industries> field.

=item *

For C<address>, you must specify C<districtOrCounty>.

=back

B<Ukraine>

=over

=item *

The sector valid values are C<Business> and C<Individual>.

=back



=head2 DeleteSupplementalTaxRegistration

=over

=item AuthorityId => Str


=back

Each argument is described in detail in: L<Paws::TaxSettings::DeleteSupplementalTaxRegistration>

Returns: a L<Paws::TaxSettings::DeleteSupplementalTaxRegistrationResponse> instance

Deletes a supplemental tax registration for a single account.


=head2 DeleteTaxRegistration

=over

=item [AccountId => Str]


=back

Each argument is described in detail in: L<Paws::TaxSettings::DeleteTaxRegistration>

Returns: a L<Paws::TaxSettings::DeleteTaxRegistrationResponse> instance

Deletes tax registration for a single account.

This API operation can't be used to delete your tax registration in
Brazil. Use the Payment preferences
(https://console.aws.amazon.com/billing/home#/paymentpreferences/paymentmethods)
page in the Billing and Cost Management console instead.


=head2 GetTaxExemptionTypes






Each argument is described in detail in: L<Paws::TaxSettings::GetTaxExemptionTypes>

Returns: a L<Paws::TaxSettings::GetTaxExemptionTypesResponse> instance

Get supported tax exemption types. The IAM action is
C<tax:GetExemptions>.


=head2 GetTaxInheritance






Each argument is described in detail in: L<Paws::TaxSettings::GetTaxInheritance>

Returns: a L<Paws::TaxSettings::GetTaxInheritanceResponse> instance

The get account tax inheritance status.


=head2 GetTaxRegistration

=over

=item [AccountId => Str]


=back

Each argument is described in detail in: L<Paws::TaxSettings::GetTaxRegistration>

Returns: a L<Paws::TaxSettings::GetTaxRegistrationResponse> instance

Retrieves tax registration for a single account.


=head2 GetTaxRegistrationDocument

=over

=item TaxDocumentMetadata => L<Paws::TaxSettings::TaxDocumentMetadata>

=item [DestinationS3Location => L<Paws::TaxSettings::DestinationS3Location>]


=back

Each argument is described in detail in: L<Paws::TaxSettings::GetTaxRegistrationDocument>

Returns: a L<Paws::TaxSettings::GetTaxRegistrationDocumentResponse> instance

Downloads your tax documents to the Amazon S3 bucket that you specify
in your request.


=head2 ListSupplementalTaxRegistrations

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::TaxSettings::ListSupplementalTaxRegistrations>

Returns: a L<Paws::TaxSettings::ListSupplementalTaxRegistrationsResponse> instance

Retrieves supplemental tax registrations for a single account.


=head2 ListTaxExemptions

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::TaxSettings::ListTaxExemptions>

Returns: a L<Paws::TaxSettings::ListTaxExemptionsResponse> instance

Retrieves the tax exemption of accounts listed in a consolidated
billing family. The IAM action is C<tax:GetExemptions>.


=head2 ListTaxRegistrations

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::TaxSettings::ListTaxRegistrations>

Returns: a L<Paws::TaxSettings::ListTaxRegistrationsResponse> instance

Retrieves the tax registration of accounts listed in a consolidated
billing family. This can be used to retrieve up to 100 accounts' tax
registrations in one call (default 50).


=head2 PutSupplementalTaxRegistration

=over

=item TaxRegistrationEntry => L<Paws::TaxSettings::SupplementalTaxRegistrationEntry>


=back

Each argument is described in detail in: L<Paws::TaxSettings::PutSupplementalTaxRegistration>

Returns: a L<Paws::TaxSettings::PutSupplementalTaxRegistrationResponse> instance

Stores supplemental tax registration for a single account.


=head2 PutTaxExemption

=over

=item AccountIds => ArrayRef[Str|Undef]

=item Authority => L<Paws::TaxSettings::Authority>

=item ExemptionCertificate => L<Paws::TaxSettings::ExemptionCertificate>

=item ExemptionType => Str


=back

Each argument is described in detail in: L<Paws::TaxSettings::PutTaxExemption>

Returns: a L<Paws::TaxSettings::PutTaxExemptionResponse> instance

Adds the tax exemption for a single account or all accounts listed in a
consolidated billing family. The IAM action is C<tax:UpdateExemptions>.


=head2 PutTaxInheritance

=over

=item [HeritageStatus => Str]


=back

Each argument is described in detail in: L<Paws::TaxSettings::PutTaxInheritance>

Returns: a L<Paws::TaxSettings::PutTaxInheritanceResponse> instance

The updated tax inheritance status.


=head2 PutTaxRegistration

=over

=item TaxRegistrationEntry => L<Paws::TaxSettings::TaxRegistrationEntry>

=item [AccountId => Str]


=back

Each argument is described in detail in: L<Paws::TaxSettings::PutTaxRegistration>

Returns: a L<Paws::TaxSettings::PutTaxRegistrationResponse> instance

Adds or updates tax registration for a single account. You can't set a
TRN if there's a pending TRN. You'll need to delete the pending TRN
first.

To call this API operation for specific countries, see the following
country-specific requirements.

B<Bangladesh>

=over

=item *

You must specify the tax registration certificate document in the
C<taxRegistrationDocuments> field of the C<VerificationDetails> object.

=back

B<Brazil>

=over

=item *

You must complete the tax registration process in the Payment
preferences
(https://console.aws.amazon.com/billing/home#/paymentpreferences/paymentmethods)
page in the Billing and Cost Management console. After your TRN and
billing address are verified, you can call this API operation.

=item *

For Amazon Web Services accounts created through Organizations, you can
call this API operation when you don't have a billing address.

=back

B<Georgia>

=over

=item *

The valid C<personType> values are C<Physical Person> and C<Business>.

=back

B<Indonesia>

=over

=item *

C<PutTaxRegistration>: The use of this operation to submit tax
information is subject to the Amazon Web Services service terms
(http://aws.amazon.com/service-terms/). By submitting, youE<rsquo>re
providing consent for Amazon Web Services to validate NIK, NPWP, and
NITKU data, provided by you with the Directorate General of Taxes of
Indonesia in accordance with the Minister of Finance Regulation (PMK)
Number 112/PMK.03/2022.

=item *

C<BatchPutTaxRegistration>: The use of this operation to submit tax
information is subject to the Amazon Web Services service terms
(http://aws.amazon.com/service-terms/). By submitting, youE<rsquo>re
providing consent for Amazon Web Services to validate NIK, NPWP, and
NITKU data, provided by you with the Directorate General of Taxes of
Indonesia in accordance with the Minister of Finance Regulation (PMK)
Number 112/PMK.03/2022, through our third-party partner PT Achilles
Advanced Management (OnlinePajak).

=item *

You must specify the C<taxRegistrationNumberType> in the
C<indonesiaAdditionalInfo> field of the C<additionalTaxInformation>
object.

=item *

If you specify C<decisionNumber>, you must specify the
C<ppnExceptionDesignationCode> in the C<indonesiaAdditionalInfo> field
of the C<additionalTaxInformation> object. If the
C<taxRegistrationNumberType> is set to NPWP or NITKU, valid values for
C<ppnExceptionDesignationCode> are either C<01>, C<02>, C<03>, C<07>,
or C<08>.

For other C<taxRegistrationNumberType> values,
C<ppnExceptionDesignationCode> must be either C<01>, C<07>, or C<08>.

=item *

If C<ppnExceptionDesignationCode> is C<07>, you must specify the
C<decisionNumber> in the C<indonesiaAdditionalInfo> field of the
C<additionalTaxInformation> object.

=back

B<Kenya>

=over

=item *

You must specify the C<personType> in the C<kenyaAdditionalInfo> field
of the C<additionalTaxInformation> object.

=item *

If the C<personType> is C<Physical Person>, you must specify the tax
registration certificate document in the C<taxRegistrationDocuments>
field of the C<VerificationDetails> object.

=back

B<Malaysia>

=over

=item *

The sector valid values are C<Business> and C<Individual>.

=item *

C<RegistrationType> valid values are C<NRIC> for individual, and TIN
and sales and service tax (SST) for Business.

=item *

For individual, you can specify the C<taxInformationNumber> in
C<MalaysiaAdditionalInfo> with NRIC type, and a valid C<MyKad> or NRIC
number.

=item *

For business, you must specify a C<businessRegistrationNumber> in
C<MalaysiaAdditionalInfo> with a TIN type and tax identification
number.

=item *

For business resellers, you must specify a
C<businessRegistrationNumber> and C<taxInformationNumber> in
C<MalaysiaAdditionalInfo> with a sales and service tax (SST) type and a
valid SST number.

=item *

For business resellers with service codes, you must specify
C<businessRegistrationNumber>, C<taxInformationNumber>, and distinct
C<serviceTaxCodes> in C<MalaysiaAdditionalInfo> with a SST type and
valid sales and service tax (SST) number. By using this API operation,
Amazon Web Services registers your self-declaration that youE<rsquo>re
an authorized business reseller registered with the Royal Malaysia
Customs Department (RMCD), and have a valid SST number.

=item *

Amazon Web Services reserves the right to seek additional information
and/or take other actions to support your self-declaration as
appropriate.

=item *

Amazon Web Services is currently registered under the following service
tax codes. You must include at least one of the service tax codes in
the service tax code strings to declare yourself as an authorized
registered business reseller.

Taxable service and service tax codes:

Consultancy - 9907061674

Training or coaching service - 9907071685

IT service - 9907101676

Digital services and electronic medium - 9907121690

=back

B<Nepal>

=over

=item *

The sector valid values are C<Business> and C<Individual>.

=back

B<Saudi Arabia>

=over

=item *

For C<address>, you must specify C<addressLine3>.

=back

B<South Korea>

=over

=item *

You must specify the C<certifiedEmailId> and C<legalName> in the
C<TaxRegistrationEntry> object. Use Korean characters for C<legalName>.

=item *

You must specify the C<businessRepresentativeName>, C<itemOfBusiness>,
and C<lineOfBusiness> in the C<southKoreaAdditionalInfo> field of the
C<additionalTaxInformation> object. Use Korean characters for these
fields.

=item *

You must specify the tax registration certificate document in the
C<taxRegistrationDocuments> field of the C<VerificationDetails> object.

=item *

For the C<address> object, use Korean characters for C<addressLine1>,
C<addressLine2> C<city>, C<postalCode>, and C<stateOrRegion>.

=back

B<Spain>

=over

=item *

You must specify the C<registrationType> in the C<spainAdditionalInfo>
field of the C<additionalTaxInformation> object.

=item *

If the C<registrationType> is C<Local>, you must specify the tax
registration certificate document in the C<taxRegistrationDocuments>
field of the C<VerificationDetails> object.

=back

B<Turkey>

=over

=item *

You must specify the C<sector> in the C<taxRegistrationEntry> object.

=item *

If your C<sector> is C<Business>, C<Individual>, or C<Government>:

=over

=item *

Specify the C<taxOffice>. If your C<sector> is C<Individual>, don't
enter this value.

=item *

(Optional) Specify the C<kepEmailId>. If your C<sector> is
C<Individual>, don't enter this value.

=item *

B<Note:> In the B<Tax Settings> page of the Billing console,
C<Government> appears as B<Public institutions>

=back

=item *

If your C<sector> is C<Business> and you're subject to KDV tax, you
must specify your industry in the C<industries> field.

=item *

For C<address>, you must specify C<districtOrCounty>.

=back

B<Ukraine>

=over

=item *

The sector valid values are C<Business> and C<Individual>.

=back





=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllSupplementalTaxRegistrations(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllSupplementalTaxRegistrations([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - taxRegistrations, passing the object as the first parameter, and the string 'taxRegistrations' as the second parameter 

If not, it will return a a L<Paws::TaxSettings::ListSupplementalTaxRegistrationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTaxExemptions(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllTaxExemptions([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - taxExemptionDetailsMap, passing the object as the first parameter, and the string 'taxExemptionDetailsMap' as the second parameter 

If not, it will return a a L<Paws::TaxSettings::ListTaxExemptionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTaxRegistrations(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllTaxRegistrations([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - accountDetails, passing the object as the first parameter, and the string 'accountDetails' as the second parameter 

If not, it will return a a L<Paws::TaxSettings::ListTaxRegistrationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

