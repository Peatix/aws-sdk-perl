
package Paws::CleanRooms::UpdatePrivacyBudgetTemplate;
  use Moose;
  has MembershipIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'membershipIdentifier', required => 1);
  has Parameters => (is => 'ro', isa => 'Paws::CleanRooms::PrivacyBudgetTemplateUpdateParameters', traits => ['NameInRequest'], request_name => 'parameters');
  has PrivacyBudgetTemplateIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'privacyBudgetTemplateIdentifier', required => 1);
  has PrivacyBudgetType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'privacyBudgetType', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdatePrivacyBudgetTemplate');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/memberships/{membershipIdentifier}/privacybudgettemplates/{privacyBudgetTemplateIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CleanRooms::UpdatePrivacyBudgetTemplateOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::UpdatePrivacyBudgetTemplate - Arguments for method UpdatePrivacyBudgetTemplate on L<Paws::CleanRooms>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdatePrivacyBudgetTemplate on the
L<AWS Clean Rooms Service|Paws::CleanRooms> service. Use the attributes of this class
as arguments to method UpdatePrivacyBudgetTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdatePrivacyBudgetTemplate.

=head1 SYNOPSIS

    my $cleanrooms = Paws->service('CleanRooms');
    my $UpdatePrivacyBudgetTemplateOutput =
      $cleanrooms->UpdatePrivacyBudgetTemplate(
      MembershipIdentifier            => 'MyMembershipIdentifier',
      PrivacyBudgetTemplateIdentifier => 'MyPrivacyBudgetTemplateIdentifier',
      PrivacyBudgetType               => 'DIFFERENTIAL_PRIVACY',
      Parameters                      => {
        DifferentialPrivacy => {
          Epsilon            => 1,    # min: 1, max: 20; OPTIONAL
          UsersNoisePerQuery => 1,    # min: 10, max: 100; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      );

    # Results:
    my $PrivacyBudgetTemplate =
      $UpdatePrivacyBudgetTemplateOutput->PrivacyBudgetTemplate;

    # Returns a L<Paws::CleanRooms::UpdatePrivacyBudgetTemplateOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cleanrooms/UpdatePrivacyBudgetTemplate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MembershipIdentifier => Str

A unique identifier for one of your memberships for a collaboration.
The privacy budget template is updated in the collaboration that this
membership belongs to. Accepts a membership ID.



=head2 Parameters => L<Paws::CleanRooms::PrivacyBudgetTemplateUpdateParameters>

Specifies the epsilon and noise parameters for the privacy budget
template.



=head2 B<REQUIRED> PrivacyBudgetTemplateIdentifier => Str

A unique identifier for your privacy budget template that you want to
update.



=head2 B<REQUIRED> PrivacyBudgetType => Str

Specifies the type of the privacy budget template.

Valid values are: C<"DIFFERENTIAL_PRIVACY">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdatePrivacyBudgetTemplate in L<Paws::CleanRooms>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

