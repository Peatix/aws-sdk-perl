
package Paws::PartnerCentralSelling::AssignOpportunity;
  use Moose;
  has Assignee => (is => 'ro', isa => 'Paws::PartnerCentralSelling::AssigneeContact', required => 1);
  has Catalog => (is => 'ro', isa => 'Str', required => 1);
  has Identifier => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssignOpportunity');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PartnerCentralSelling::AssignOpportunity - Arguments for method AssignOpportunity on L<Paws::PartnerCentralSelling>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssignOpportunity on the
L<Partner Central Selling API|Paws::PartnerCentralSelling> service. Use the attributes of this class
as arguments to method AssignOpportunity.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssignOpportunity.

=head1 SYNOPSIS

    my $partnercentral-selling = Paws->service('PartnerCentralSelling');
    $partnercentral -selling->AssignOpportunity(
      Assignee => {
        BusinessTitle => 'MyJobTitle',                          # max: 80
        Email         => 'MyEmail',                             # max: 80
        FirstName     => 'MyAssigneeContactFirstNameString',    # max: 80
        LastName      => 'MyAssigneeContactLastNameString',     # max: 80

      },
      Catalog    => 'MyCatalogIdentifier',
      Identifier => 'MyOpportunityIdentifier',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling/AssignOpportunity>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Assignee => L<Paws::PartnerCentralSelling::AssigneeContact>

Specifies the user or team member responsible for managing the assigned
opportunity. This field identifies the I<Assignee> based on the
partner's internal team structure. Ensure that the email address is
associated with a registered user in your Partner Central account.



=head2 B<REQUIRED> Catalog => Str

Specifies the catalog associated with the request. This field takes a
string value from a predefined list: C<AWS> or C<Sandbox>. The catalog
determines which environment the opportunity is assigned in. Use C<AWS>
to assign real opportunities in the Amazon Web Services catalog, and
C<Sandbox> for testing in secure, isolated environments.



=head2 B<REQUIRED> Identifier => Str

Requires the C<Opportunity>'s unique identifier when you want to assign
it to another user. Provide the correct identifier so the intended
opportunity is reassigned.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssignOpportunity in L<Paws::PartnerCentralSelling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

