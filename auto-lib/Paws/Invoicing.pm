package Paws::Invoicing;
  use Moose;
  sub service { 'invoicing' }
  sub signing_name { 'invoicing' }
  sub version { '2024-12-01' }
  sub target_prefix { 'Invoicing' }
  sub json_version { "1.0" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub BatchGetInvoiceProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Invoicing::BatchGetInvoiceProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateInvoiceUnit {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Invoicing::CreateInvoiceUnit', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteInvoiceUnit {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Invoicing::DeleteInvoiceUnit', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetInvoiceUnit {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Invoicing::GetInvoiceUnit', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListInvoiceUnits {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Invoicing::ListInvoiceUnits', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Invoicing::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Invoicing::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Invoicing::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateInvoiceUnit {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Invoicing::UpdateInvoiceUnit', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllInvoiceUnits {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListInvoiceUnits(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListInvoiceUnits(@_, NextToken => $next_result->NextToken);
        push @{ $result->InvoiceUnits }, @{ $next_result->InvoiceUnits };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'InvoiceUnits') foreach (@{ $result->InvoiceUnits });
        $result = $self->ListInvoiceUnits(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'InvoiceUnits') foreach (@{ $result->InvoiceUnits });
    }

    return undef
  }


  sub operations { qw/BatchGetInvoiceProfile CreateInvoiceUnit DeleteInvoiceUnit GetInvoiceUnit ListInvoiceUnits ListTagsForResource TagResource UntagResource UpdateInvoiceUnit / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Invoicing - Perl Interface to AWS AWS Invoicing

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Invoicing');
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

B<Amazon Web Services Invoice Configuration>

You can use Amazon Web Services Invoice Configuration APIs to
programmatically create, update, delete, get, and list invoice units.
You can also programmatically fetch the information of the invoice
receiver. For example, business legal name, address, and invoicing
contacts.

You can use Amazon Web Services Invoice Configuration to receive
separate Amazon Web Services invoices based your organizational needs.
By using Amazon Web Services Invoice Configuration, you can configure
invoice units that are groups of Amazon Web Services accounts that
represent your business entities, and receive separate invoices for
each business entity. You can also assign a unique member or payer
account as the invoice receiver for each invoice unit. As you create
new accounts within your Organizations using Amazon Web Services
Invoice Configuration APIs, you can automate the creation of new
invoice units and subsequently automate the addition of new accounts to
your invoice units.

Service endpoint

You can use the following endpoints for Amazon Web Services Invoice
Configuration:

=over

=item *

C<https://invoicing.us-east-1.api.aws>

=back


For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/invoicing-2024-12-01>


=head1 METHODS

=head2 BatchGetInvoiceProfile

=over

=item AccountIds => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Invoicing::BatchGetInvoiceProfile>

Returns: a L<Paws::Invoicing::BatchGetInvoiceProfileResponse> instance

This gets the invoice profile associated with a set of accounts. The
accounts must be linked accounts under the requester management account
organization.


=head2 CreateInvoiceUnit

=over

=item InvoiceReceiver => Str

=item Name => Str

=item Rule => L<Paws::Invoicing::InvoiceUnitRule>

=item [Description => Str]

=item [ResourceTags => ArrayRef[L<Paws::Invoicing::ResourceTag>]]

=item [TaxInheritanceDisabled => Bool]


=back

Each argument is described in detail in: L<Paws::Invoicing::CreateInvoiceUnit>

Returns: a L<Paws::Invoicing::CreateInvoiceUnitResponse> instance

This creates a new invoice unit with the provided definition.


=head2 DeleteInvoiceUnit

=over

=item InvoiceUnitArn => Str


=back

Each argument is described in detail in: L<Paws::Invoicing::DeleteInvoiceUnit>

Returns: a L<Paws::Invoicing::DeleteInvoiceUnitResponse> instance

This deletes an invoice unit with the provided invoice unit ARN.


=head2 GetInvoiceUnit

=over

=item InvoiceUnitArn => Str

=item [AsOf => Str]


=back

Each argument is described in detail in: L<Paws::Invoicing::GetInvoiceUnit>

Returns: a L<Paws::Invoicing::GetInvoiceUnitResponse> instance

This retrieves the invoice unit definition.


=head2 ListInvoiceUnits

=over

=item [AsOf => Str]

=item [Filters => L<Paws::Invoicing::Filters>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Invoicing::ListInvoiceUnits>

Returns: a L<Paws::Invoicing::ListInvoiceUnitsResponse> instance

This fetches a list of all invoice unit definitions for a given
account, as of the provided C<AsOf> date.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::Invoicing::ListTagsForResource>

Returns: a L<Paws::Invoicing::ListTagsForResourceResponse> instance

Lists the tags for a resource.


=head2 TagResource

=over

=item ResourceArn => Str

=item ResourceTags => ArrayRef[L<Paws::Invoicing::ResourceTag>]


=back

Each argument is described in detail in: L<Paws::Invoicing::TagResource>

Returns: a L<Paws::Invoicing::TagResourceResponse> instance

Adds a tag to a resource.


=head2 UntagResource

=over

=item ResourceArn => Str

=item ResourceTagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Invoicing::UntagResource>

Returns: a L<Paws::Invoicing::UntagResourceResponse> instance

Removes a tag from a resource.


=head2 UpdateInvoiceUnit

=over

=item InvoiceUnitArn => Str

=item [Description => Str]

=item [Rule => L<Paws::Invoicing::InvoiceUnitRule>]

=item [TaxInheritanceDisabled => Bool]


=back

Each argument is described in detail in: L<Paws::Invoicing::UpdateInvoiceUnit>

Returns: a L<Paws::Invoicing::UpdateInvoiceUnitResponse> instance

You can update the invoice unit configuration at any time, and Amazon
Web Services will use the latest configuration at the end of the month.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllInvoiceUnits(sub { },[AsOf => Str, Filters => L<Paws::Invoicing::Filters>, MaxResults => Int, NextToken => Str])

=head2 ListAllInvoiceUnits([AsOf => Str, Filters => L<Paws::Invoicing::Filters>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - InvoiceUnits, passing the object as the first parameter, and the string 'InvoiceUnits' as the second parameter 

If not, it will return a a L<Paws::Invoicing::ListInvoiceUnitsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

