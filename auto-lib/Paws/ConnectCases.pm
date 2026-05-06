package Paws::ConnectCases;
  use Moose;
  sub service { 'cases' }
  sub signing_name { 'cases' }
  sub version { '2022-10-03' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub BatchGetCaseRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectCases::BatchGetCaseRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchGetField {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectCases::BatchGetField', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchPutFieldOptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectCases::BatchPutFieldOptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateCase {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectCases::CreateCase', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateCaseRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectCases::CreateCaseRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectCases::CreateDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateField {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectCases::CreateField', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateLayout {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectCases::CreateLayout', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateRelatedItem {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectCases::CreateRelatedItem', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectCases::CreateTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCaseRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectCases::DeleteCaseRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectCases::DeleteDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteField {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectCases::DeleteField', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteLayout {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectCases::DeleteLayout', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectCases::DeleteTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCase {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectCases::GetCase', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCaseAuditEvents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectCases::GetCaseAuditEvents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCaseEventConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectCases::GetCaseEventConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDomain {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectCases::GetDomain', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetLayout {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectCases::GetLayout', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectCases::GetTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCaseRules {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectCases::ListCaseRules', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCasesForContact {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectCases::ListCasesForContact', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDomains {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectCases::ListDomains', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListFieldOptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectCases::ListFieldOptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListFields {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectCases::ListFields', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListLayouts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectCases::ListLayouts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectCases::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTemplates {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectCases::ListTemplates', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutCaseEventConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectCases::PutCaseEventConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchCases {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectCases::SearchCases', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchRelatedItems {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectCases::SearchRelatedItems', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectCases::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectCases::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateCase {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectCases::UpdateCase', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateCaseRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectCases::UpdateCaseRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateField {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectCases::UpdateField', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateLayout {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectCases::UpdateLayout', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ConnectCases::UpdateTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllCaseRules {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListCaseRules(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListCaseRules(@_, nextToken => $next_result->nextToken);
        push @{ $result->caseRules }, @{ $next_result->caseRules };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'caseRules') foreach (@{ $result->caseRules });
        $result = $self->ListCaseRules(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'caseRules') foreach (@{ $result->caseRules });
    }

    return undef
  }
  sub SearchAllCases {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->SearchCases(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->SearchCases(@_, nextToken => $next_result->nextToken);
        push @{ $result->cases }, @{ $next_result->cases };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'cases') foreach (@{ $result->cases });
        $result = $self->SearchCases(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'cases') foreach (@{ $result->cases });
    }

    return undef
  }
  sub SearchAllRelatedItems {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->SearchRelatedItems(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->SearchRelatedItems(@_, nextToken => $next_result->nextToken);
        push @{ $result->relatedItems }, @{ $next_result->relatedItems };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'relatedItems') foreach (@{ $result->relatedItems });
        $result = $self->SearchRelatedItems(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'relatedItems') foreach (@{ $result->relatedItems });
    }

    return undef
  }


  sub operations { qw/BatchGetCaseRule BatchGetField BatchPutFieldOptions CreateCase CreateCaseRule CreateDomain CreateField CreateLayout CreateRelatedItem CreateTemplate DeleteCaseRule DeleteDomain DeleteField DeleteLayout DeleteTemplate GetCase GetCaseAuditEvents GetCaseEventConfiguration GetDomain GetLayout GetTemplate ListCaseRules ListCasesForContact ListDomains ListFieldOptions ListFields ListLayouts ListTagsForResource ListTemplates PutCaseEventConfiguration SearchCases SearchRelatedItems TagResource UntagResource UpdateCase UpdateCaseRule UpdateField UpdateLayout UpdateTemplate / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectCases - Perl Interface to AWS Amazon Connect Cases

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('ConnectCases');
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

=over

=item *

Cases actions
(https://docs.aws.amazon.com/connect/latest/APIReference/API_Operations_Amazon_Connect_Cases.html)

=item *

Cases data types
(https://docs.aws.amazon.com/connect/latest/APIReference/API_Types_Amazon_Connect_Cases.html)

=back

With Amazon Connect Cases, your agents can track and manage customer
issues that require multiple interactions, follow-up tasks, and teams
in your contact center. A case represents a customer issue. It records
the issue, the steps and interactions taken to resolve the issue, and
the outcome. For more information, see Amazon Connect Cases
(https://docs.aws.amazon.com/connect/latest/adminguide/cases.html) in
the I<Amazon Connect Administrator Guide>.

For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 BatchGetCaseRule

=over

=item CaseRules => ArrayRef[L<Paws::ConnectCases::CaseRuleIdentifier>]

=item DomainId => Str


=back

Each argument is described in detail in: L<Paws::ConnectCases::BatchGetCaseRule>

Returns: a L<Paws::ConnectCases::BatchGetCaseRuleResponse> instance

Gets a batch of case rules. In the Amazon Connect admin website, case
rules are known as I<case field conditions>. For more information about
case field conditions, see Add case field conditions to a case template
(https://docs.aws.amazon.com/connect/latest/adminguide/case-field-conditions.html).


=head2 BatchGetField

=over

=item DomainId => Str

=item Fields => ArrayRef[L<Paws::ConnectCases::FieldIdentifier>]


=back

Each argument is described in detail in: L<Paws::ConnectCases::BatchGetField>

Returns: a L<Paws::ConnectCases::BatchGetFieldResponse> instance

Returns the description for the list of fields in the request
parameters.


=head2 BatchPutFieldOptions

=over

=item DomainId => Str

=item FieldId => Str

=item Options => ArrayRef[L<Paws::ConnectCases::FieldOption>]


=back

Each argument is described in detail in: L<Paws::ConnectCases::BatchPutFieldOptions>

Returns: a L<Paws::ConnectCases::BatchPutFieldOptionsResponse> instance

Creates and updates a set of field options for a single select field in
a Cases domain.


=head2 CreateCase

=over

=item DomainId => Str

=item Fields => ArrayRef[L<Paws::ConnectCases::FieldValue>]

=item TemplateId => Str

=item [ClientToken => Str]

=item [PerformedBy => L<Paws::ConnectCases::UserUnion>]


=back

Each argument is described in detail in: L<Paws::ConnectCases::CreateCase>

Returns: a L<Paws::ConnectCases::CreateCaseResponse> instance

If you provide a value for C<PerformedBy.UserArn> you must also have
connect:DescribeUser
(https://docs.aws.amazon.com/connect/latest/APIReference/API_DescribeUser.html)
permission on the User ARN resource that you provide

Creates a case in the specified Cases domain. Case system and custom
fields are taken as an array id/value pairs with a declared data types.

The following fields are required when creating a case:

=over

=item *

C<customer_id> - You must provide the full customer profile ARN in this
format: C<arn:aws:profile:your_AWS_Region:your_AWS_account
ID:domains/your_profiles_domain_name/profiles/profile_ID>

=item *

C<title>

=back



=head2 CreateCaseRule

=over

=item DomainId => Str

=item Name => Str

=item Rule => L<Paws::ConnectCases::CaseRuleDetails>

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::ConnectCases::CreateCaseRule>

Returns: a L<Paws::ConnectCases::CreateCaseRuleResponse> instance

Creates a new case rule. In the Amazon Connect admin website, case
rules are known as I<case field conditions>. For more information about
case field conditions, see Add case field conditions to a case template
(https://docs.aws.amazon.com/connect/latest/adminguide/case-field-conditions.html).


=head2 CreateDomain

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::ConnectCases::CreateDomain>

Returns: a L<Paws::ConnectCases::CreateDomainResponse> instance

Creates a domain, which is a container for all case data, such as
cases, fields, templates and layouts. Each Amazon Connect instance can
be associated with only one Cases domain.

This will not associate your connect instance to Cases domain. Instead,
use the Amazon Connect CreateIntegrationAssociation
(https://docs.aws.amazon.com/connect/latest/APIReference/API_CreateIntegrationAssociation.html)
API. You need specific IAM permissions to successfully associate the
Cases domain. For more information, see Onboard to Cases
(https://docs.aws.amazon.com/connect/latest/adminguide/required-permissions-iam-cases.html#onboard-cases-iam).


=head2 CreateField

=over

=item DomainId => Str

=item Name => Str

=item Type => Str

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::ConnectCases::CreateField>

Returns: a L<Paws::ConnectCases::CreateFieldResponse> instance

Creates a field in the Cases domain. This field is used to define the
case object model (that is, defines what data can be captured on cases)
in a Cases domain.


=head2 CreateLayout

=over

=item Content => L<Paws::ConnectCases::LayoutContent>

=item DomainId => Str

=item Name => Str


=back

Each argument is described in detail in: L<Paws::ConnectCases::CreateLayout>

Returns: a L<Paws::ConnectCases::CreateLayoutResponse> instance

Creates a layout in the Cases domain. Layouts define the following
configuration in the top section and More Info tab of the Cases user
interface:

=over

=item *

Fields to display to the users

=item *

Field ordering

=back

Title and Status fields cannot be part of layouts since they are not
configurable.


=head2 CreateRelatedItem

=over

=item CaseId => Str

=item Content => L<Paws::ConnectCases::RelatedItemInputContent>

=item DomainId => Str

=item Type => Str

=item [PerformedBy => L<Paws::ConnectCases::UserUnion>]


=back

Each argument is described in detail in: L<Paws::ConnectCases::CreateRelatedItem>

Returns: a L<Paws::ConnectCases::CreateRelatedItemResponse> instance

Creates a related item (comments, tasks, and contacts) and associates
it with a case.

=over

=item *

A Related Item is a resource that is associated with a case. It may or
may not have an external identifier linking it to an external resource
(for example, a C<contactArn>). All Related Items have their own
internal identifier, the C<relatedItemArn>. Examples of related items
include C<comments> and C<contacts>.

=item *

If you provide a value for C<performedBy.userArn> you must also have
DescribeUser
(https://docs.aws.amazon.com/connect/latest/APIReference/API_DescribeUser.html)
permission on the ARN of the user that you provide.

=item *

The C<type> field is reserved for internal use only.

=back



=head2 CreateTemplate

=over

=item DomainId => Str

=item Name => Str

=item [Description => Str]

=item [LayoutConfiguration => L<Paws::ConnectCases::LayoutConfiguration>]

=item [RequiredFields => ArrayRef[L<Paws::ConnectCases::RequiredField>]]

=item [Rules => ArrayRef[L<Paws::ConnectCases::TemplateRule>]]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::ConnectCases::CreateTemplate>

Returns: a L<Paws::ConnectCases::CreateTemplateResponse> instance

Creates a template in the Cases domain. This template is used to define
the case object model (that is, to define what data can be captured on
cases) in a Cases domain. A template must have a unique name within a
domain, and it must reference existing field IDs and layout IDs.
Additionally, multiple fields with same IDs are not allowed within the
same Template. A template can be either Active or Inactive, as
indicated by its status. Inactive templates cannot be used to create
cases.

Other template APIs are:

=over

=item *

DeleteTemplate
(https://docs.aws.amazon.com/connect/latest/APIReference/API_connect-cases_DeleteTemplate.html)

=item *

GetTemplate
(https://docs.aws.amazon.com/connect/latest/APIReference/API_connect-cases_GetTemplate.html)

=item *

ListTemplates
(https://docs.aws.amazon.com/connect/latest/APIReference/API_connect-cases_ListTemplates.html)

=item *

UpdateTemplate
(https://docs.aws.amazon.com/connect/latest/APIReference/API_connect-cases_UpdateTemplate.html)

=back



=head2 DeleteCaseRule

=over

=item CaseRuleId => Str

=item DomainId => Str


=back

Each argument is described in detail in: L<Paws::ConnectCases::DeleteCaseRule>

Returns: a L<Paws::ConnectCases::DeleteCaseRuleResponse> instance

Deletes a case rule. In the Amazon Connect admin website, case rules
are known as I<case field conditions>. For more information about case
field conditions, see Add case field conditions to a case template
(https://docs.aws.amazon.com/connect/latest/adminguide/case-field-conditions.html).


=head2 DeleteDomain

=over

=item DomainId => Str


=back

Each argument is described in detail in: L<Paws::ConnectCases::DeleteDomain>

Returns: a L<Paws::ConnectCases::DeleteDomainResponse> instance

Deletes a Cases domain.

After deleting your domain you must disassociate the deleted domain
from your Amazon Connect instance with another API call before being
able to use Cases again with this Amazon Connect instance. See
DeleteIntegrationAssociation
(https://docs.aws.amazon.com/connect/latest/APIReference/API_DeleteIntegrationAssociation.html).


=head2 DeleteField

=over

=item DomainId => Str

=item FieldId => Str


=back

Each argument is described in detail in: L<Paws::ConnectCases::DeleteField>

Returns: a L<Paws::ConnectCases::DeleteFieldResponse> instance

Deletes a field from a cases template. You can delete up to 100 fields
per domain.

After a field is deleted:

=over

=item *

You can still retrieve the field by calling C<BatchGetField>.

=item *

You cannot update a deleted field by calling C<UpdateField>; it throws
a C<ValidationException>.

=item *

Deleted fields are not included in the C<ListFields> response.

=item *

Calling C<CreateCase> with a deleted field throws a
C<ValidationException> denoting which field IDs in the request have
been deleted.

=item *

Calling C<GetCase> with a deleted field ID returns the deleted field's
value if one exists.

=item *

Calling C<UpdateCase> with a deleted field ID throws a
C<ValidationException> if the case does not already contain a value for
the deleted field. Otherwise it succeeds, allowing you to update or
remove (using C<emptyValue: {}>) the field's value from the case.

=item *

C<GetTemplate> does not return field IDs for deleted fields.

=item *

C<GetLayout> does not return field IDs for deleted fields.

=item *

Calling C<SearchCases> with the deleted field ID as a filter returns
any cases that have a value for the deleted field that matches the
filter criteria.

=item *

Calling C<SearchCases> with a C<searchTerm> value that matches a
deleted field's value on a case returns the case in the response.

=item *

Calling C<BatchPutFieldOptions> with a deleted field ID throw a
C<ValidationException>.

=item *

Calling C<GetCaseEventConfiguration> does not return field IDs for
deleted fields.

=back



=head2 DeleteLayout

=over

=item DomainId => Str

=item LayoutId => Str


=back

Each argument is described in detail in: L<Paws::ConnectCases::DeleteLayout>

Returns: a L<Paws::ConnectCases::DeleteLayoutResponse> instance

Deletes a layout from a cases template. You can delete up to 100
layouts per domain.

After a layout is deleted:

=over

=item *

You can still retrieve the layout by calling C<GetLayout>.

=item *

You cannot update a deleted layout by calling C<UpdateLayout>; it
throws a C<ValidationException>.

=item *

Deleted layouts are not included in the C<ListLayouts> response.

=back



=head2 DeleteTemplate

=over

=item DomainId => Str

=item TemplateId => Str


=back

Each argument is described in detail in: L<Paws::ConnectCases::DeleteTemplate>

Returns: a L<Paws::ConnectCases::DeleteTemplateResponse> instance

Deletes a cases template. You can delete up to 100 templates per
domain.

After a cases template is deleted:

=over

=item *

You can still retrieve the template by calling C<GetTemplate>.

=item *

You cannot update the template.

=item *

You cannot create a case by using the deleted template.

=item *

Deleted templates are not included in the C<ListTemplates> response.

=back



=head2 GetCase

=over

=item CaseId => Str

=item DomainId => Str

=item Fields => ArrayRef[L<Paws::ConnectCases::FieldIdentifier>]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ConnectCases::GetCase>

Returns: a L<Paws::ConnectCases::GetCaseResponse> instance

Returns information about a specific case if it exists.


=head2 GetCaseAuditEvents

=over

=item CaseId => Str

=item DomainId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ConnectCases::GetCaseAuditEvents>

Returns: a L<Paws::ConnectCases::GetCaseAuditEventsResponse> instance

Returns the audit history about a specific case if it exists.


=head2 GetCaseEventConfiguration

=over

=item DomainId => Str


=back

Each argument is described in detail in: L<Paws::ConnectCases::GetCaseEventConfiguration>

Returns: a L<Paws::ConnectCases::GetCaseEventConfigurationResponse> instance

Returns the case event publishing configuration.


=head2 GetDomain

=over

=item DomainId => Str


=back

Each argument is described in detail in: L<Paws::ConnectCases::GetDomain>

Returns: a L<Paws::ConnectCases::GetDomainResponse> instance

Returns information about a specific domain if it exists.


=head2 GetLayout

=over

=item DomainId => Str

=item LayoutId => Str


=back

Each argument is described in detail in: L<Paws::ConnectCases::GetLayout>

Returns: a L<Paws::ConnectCases::GetLayoutResponse> instance

Returns the details for the requested layout.


=head2 GetTemplate

=over

=item DomainId => Str

=item TemplateId => Str


=back

Each argument is described in detail in: L<Paws::ConnectCases::GetTemplate>

Returns: a L<Paws::ConnectCases::GetTemplateResponse> instance

Returns the details for the requested template. Other template APIs
are:

=over

=item *

CreateTemplate
(https://docs.aws.amazon.com/connect/latest/APIReference/API_connect-cases_CreateTemplate.html)

=item *

DeleteTemplate
(https://docs.aws.amazon.com/connect/latest/APIReference/API_connect-cases_DeleteTemplate.html)

=item *

ListTemplates
(https://docs.aws.amazon.com/connect/latest/APIReference/API_connect-cases_ListTemplates.html)

=item *

UpdateTemplate
(https://docs.aws.amazon.com/connect/latest/APIReference/API_connect-cases_UpdateTemplate.html)

=back



=head2 ListCaseRules

=over

=item DomainId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ConnectCases::ListCaseRules>

Returns: a L<Paws::ConnectCases::ListCaseRulesResponse> instance

Lists all case rules in a Cases domain. In the Amazon Connect admin
website, case rules are known as I<case field conditions>. For more
information about case field conditions, see Add case field conditions
to a case template
(https://docs.aws.amazon.com/connect/latest/adminguide/case-field-conditions.html).


=head2 ListCasesForContact

=over

=item ContactArn => Str

=item DomainId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ConnectCases::ListCasesForContact>

Returns: a L<Paws::ConnectCases::ListCasesForContactResponse> instance

Lists cases for a given contact.


=head2 ListDomains

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ConnectCases::ListDomains>

Returns: a L<Paws::ConnectCases::ListDomainsResponse> instance

Lists all cases domains in the Amazon Web Services account. Each list
item is a condensed summary object of the domain.


=head2 ListFieldOptions

=over

=item DomainId => Str

=item FieldId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Values => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::ConnectCases::ListFieldOptions>

Returns: a L<Paws::ConnectCases::ListFieldOptionsResponse> instance

Lists all of the field options for a field identifier in the domain.


=head2 ListFields

=over

=item DomainId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ConnectCases::ListFields>

Returns: a L<Paws::ConnectCases::ListFieldsResponse> instance

Lists all fields in a Cases domain.


=head2 ListLayouts

=over

=item DomainId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ConnectCases::ListLayouts>

Returns: a L<Paws::ConnectCases::ListLayoutsResponse> instance

Lists all layouts in the given cases domain. Each list item is a
condensed summary object of the layout.


=head2 ListTagsForResource

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::ConnectCases::ListTagsForResource>

Returns: a L<Paws::ConnectCases::ListTagsForResourceResponse> instance

Lists tags for a resource.


=head2 ListTemplates

=over

=item DomainId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Status => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::ConnectCases::ListTemplates>

Returns: a L<Paws::ConnectCases::ListTemplatesResponse> instance

Lists all of the templates in a Cases domain. Each list item is a
condensed summary object of the template.

Other template APIs are:

=over

=item *

CreateTemplate
(https://docs.aws.amazon.com/connect/latest/APIReference/API_connect-cases_CreateTemplate.html)

=item *

DeleteTemplate
(https://docs.aws.amazon.com/connect/latest/APIReference/API_connect-cases_DeleteTemplate.html)

=item *

GetTemplate
(https://docs.aws.amazon.com/connect/latest/APIReference/API_connect-cases_GetTemplate.html)

=item *

UpdateTemplate
(https://docs.aws.amazon.com/connect/latest/APIReference/API_connect-cases_UpdateTemplate.html)

=back



=head2 PutCaseEventConfiguration

=over

=item DomainId => Str

=item EventBridge => L<Paws::ConnectCases::EventBridgeConfiguration>


=back

Each argument is described in detail in: L<Paws::ConnectCases::PutCaseEventConfiguration>

Returns: a L<Paws::ConnectCases::PutCaseEventConfigurationResponse> instance

Adds case event publishing configuration. For a complete list of fields
you can add to the event message, see Create case fields
(https://docs.aws.amazon.com/connect/latest/adminguide/case-fields.html)
in the I<Amazon Connect Administrator Guide>


=head2 SearchCases

=over

=item DomainId => Str

=item [Fields => ArrayRef[L<Paws::ConnectCases::FieldIdentifier>]]

=item [Filter => L<Paws::ConnectCases::CaseFilter>]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SearchTerm => Str]

=item [Sorts => ArrayRef[L<Paws::ConnectCases::Sort>]]


=back

Each argument is described in detail in: L<Paws::ConnectCases::SearchCases>

Returns: a L<Paws::ConnectCases::SearchCasesResponse> instance

Searches for cases within their associated Cases domain. Search results
are returned as a paginated list of abridged case documents.

For C<customer_id> you must provide the full customer profile ARN in
this format: C< arn:aws:profile:your AWS Region:your AWS account
ID:domains/profiles domain name/profiles/profile ID>.


=head2 SearchRelatedItems

=over

=item CaseId => Str

=item DomainId => Str

=item [Filters => ArrayRef[L<Paws::ConnectCases::RelatedItemTypeFilter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ConnectCases::SearchRelatedItems>

Returns: a L<Paws::ConnectCases::SearchRelatedItemsResponse> instance

Searches for related items that are associated with a case.

If no filters are provided, this returns all related items associated
with a case.


=head2 TagResource

=over

=item Arn => Str

=item Tags => L<Paws::ConnectCases::Tags>


=back

Each argument is described in detail in: L<Paws::ConnectCases::TagResource>

Returns: nothing

Adds tags to a resource.


=head2 UntagResource

=over

=item Arn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::ConnectCases::UntagResource>

Returns: nothing

Untags a resource.


=head2 UpdateCase

=over

=item CaseId => Str

=item DomainId => Str

=item Fields => ArrayRef[L<Paws::ConnectCases::FieldValue>]

=item [PerformedBy => L<Paws::ConnectCases::UserUnion>]


=back

Each argument is described in detail in: L<Paws::ConnectCases::UpdateCase>

Returns: a L<Paws::ConnectCases::UpdateCaseResponse> instance

If you provide a value for C<PerformedBy.UserArn> you must also have
connect:DescribeUser
(https://docs.aws.amazon.com/connect/latest/APIReference/API_DescribeUser.html)
permission on the User ARN resource that you provide

Updates the values of fields on a case. Fields to be updated are
received as an array of id/value pairs identical to the C<CreateCase>
input .

If the action is successful, the service sends back an HTTP 200
response with an empty HTTP body.


=head2 UpdateCaseRule

=over

=item CaseRuleId => Str

=item DomainId => Str

=item [Description => Str]

=item [Name => Str]

=item [Rule => L<Paws::ConnectCases::CaseRuleDetails>]


=back

Each argument is described in detail in: L<Paws::ConnectCases::UpdateCaseRule>

Returns: a L<Paws::ConnectCases::UpdateCaseRuleResponse> instance

Updates a case rule. In the Amazon Connect admin website, case rules
are known as I<case field conditions>. For more information about case
field conditions, see Add case field conditions to a case template
(https://docs.aws.amazon.com/connect/latest/adminguide/case-field-conditions.html).


=head2 UpdateField

=over

=item DomainId => Str

=item FieldId => Str

=item [Description => Str]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::ConnectCases::UpdateField>

Returns: a L<Paws::ConnectCases::UpdateFieldResponse> instance

Updates the properties of an existing field.


=head2 UpdateLayout

=over

=item DomainId => Str

=item LayoutId => Str

=item [Content => L<Paws::ConnectCases::LayoutContent>]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::ConnectCases::UpdateLayout>

Returns: a L<Paws::ConnectCases::UpdateLayoutResponse> instance

Updates the attributes of an existing layout.

If the action is successful, the service sends back an HTTP 200
response with an empty HTTP body.

A C<ValidationException> is returned when you add non-existent
C<fieldIds> to a layout.

Title and Status fields cannot be part of layouts because they are not
configurable.


=head2 UpdateTemplate

=over

=item DomainId => Str

=item TemplateId => Str

=item [Description => Str]

=item [LayoutConfiguration => L<Paws::ConnectCases::LayoutConfiguration>]

=item [Name => Str]

=item [RequiredFields => ArrayRef[L<Paws::ConnectCases::RequiredField>]]

=item [Rules => ArrayRef[L<Paws::ConnectCases::TemplateRule>]]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::ConnectCases::UpdateTemplate>

Returns: a L<Paws::ConnectCases::UpdateTemplateResponse> instance

Updates the attributes of an existing template. The template attributes
that can be modified include C<name>, C<description>,
C<layoutConfiguration>, C<requiredFields>, and C<status>. At least one
of these attributes must not be null. If a null value is provided for a
given attribute, that attribute is ignored and its current value is
preserved.

Other template APIs are:

=over

=item *

CreateTemplate
(https://docs.aws.amazon.com/connect/latest/APIReference/API_connect-cases_CreateTemplate.html)

=item *

DeleteTemplate
(https://docs.aws.amazon.com/connect/latest/APIReference/API_connect-cases_DeleteTemplate.html)

=item *

GetTemplate
(https://docs.aws.amazon.com/connect/latest/APIReference/API_connect-cases_GetTemplate.html)

=item *

ListTemplates
(https://docs.aws.amazon.com/connect/latest/APIReference/API_connect-cases_ListTemplates.html)

=back





=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllCaseRules(sub { },DomainId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllCaseRules(DomainId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - caseRules, passing the object as the first parameter, and the string 'caseRules' as the second parameter 

If not, it will return a a L<Paws::ConnectCases::ListCaseRulesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 SearchAllCases(sub { },DomainId => Str, [Fields => ArrayRef[L<Paws::ConnectCases::FieldIdentifier>], Filter => L<Paws::ConnectCases::CaseFilter>, MaxResults => Int, NextToken => Str, SearchTerm => Str, Sorts => ArrayRef[L<Paws::ConnectCases::Sort>]])

=head2 SearchAllCases(DomainId => Str, [Fields => ArrayRef[L<Paws::ConnectCases::FieldIdentifier>], Filter => L<Paws::ConnectCases::CaseFilter>, MaxResults => Int, NextToken => Str, SearchTerm => Str, Sorts => ArrayRef[L<Paws::ConnectCases::Sort>]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - cases, passing the object as the first parameter, and the string 'cases' as the second parameter 

If not, it will return a a L<Paws::ConnectCases::SearchCasesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 SearchAllRelatedItems(sub { },CaseId => Str, DomainId => Str, [Filters => ArrayRef[L<Paws::ConnectCases::RelatedItemTypeFilter>], MaxResults => Int, NextToken => Str])

=head2 SearchAllRelatedItems(CaseId => Str, DomainId => Str, [Filters => ArrayRef[L<Paws::ConnectCases::RelatedItemTypeFilter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - relatedItems, passing the object as the first parameter, and the string 'relatedItems' as the second parameter 

If not, it will return a a L<Paws::ConnectCases::SearchRelatedItemsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

