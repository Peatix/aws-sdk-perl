
package Paws::CleanRooms::GetPrivacyBudgetTemplate;
  use Moose;
  has MembershipIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'membershipIdentifier', required => 1);
  has PrivacyBudgetTemplateIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'privacyBudgetTemplateIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetPrivacyBudgetTemplate');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/memberships/{membershipIdentifier}/privacybudgettemplates/{privacyBudgetTemplateIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CleanRooms::GetPrivacyBudgetTemplateOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::GetPrivacyBudgetTemplate - Arguments for method GetPrivacyBudgetTemplate on L<Paws::CleanRooms>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetPrivacyBudgetTemplate on the
L<AWS Clean Rooms Service|Paws::CleanRooms> service. Use the attributes of this class
as arguments to method GetPrivacyBudgetTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetPrivacyBudgetTemplate.

=head1 SYNOPSIS

    my $cleanrooms = Paws->service('CleanRooms');
    my $GetPrivacyBudgetTemplateOutput = $cleanrooms->GetPrivacyBudgetTemplate(
      MembershipIdentifier            => 'MyMembershipIdentifier',
      PrivacyBudgetTemplateIdentifier => 'MyPrivacyBudgetTemplateIdentifier',

    );

    # Results:
    my $PrivacyBudgetTemplate =
      $GetPrivacyBudgetTemplateOutput->PrivacyBudgetTemplate;

    # Returns a L<Paws::CleanRooms::GetPrivacyBudgetTemplateOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cleanrooms/GetPrivacyBudgetTemplate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MembershipIdentifier => Str

A unique identifier for one of your memberships for a collaboration.
The privacy budget template is retrieved from the collaboration that
this membership belongs to. Accepts a membership ID.



=head2 B<REQUIRED> PrivacyBudgetTemplateIdentifier => Str

A unique identifier for your privacy budget template.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetPrivacyBudgetTemplate in L<Paws::CleanRooms>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

