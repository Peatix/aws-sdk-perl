
package Paws::CleanRooms::CreatePrivacyBudgetTemplate;
  use Moose;
  has AutoRefresh => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'autoRefresh', required => 1);
  has MembershipIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'membershipIdentifier', required => 1);
  has Parameters => (is => 'ro', isa => 'Paws::CleanRooms::PrivacyBudgetTemplateParametersInput', traits => ['NameInRequest'], request_name => 'parameters', required => 1);
  has PrivacyBudgetType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'privacyBudgetType', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::CleanRooms::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePrivacyBudgetTemplate');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/memberships/{membershipIdentifier}/privacybudgettemplates');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CleanRooms::CreatePrivacyBudgetTemplateOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::CreatePrivacyBudgetTemplate - Arguments for method CreatePrivacyBudgetTemplate on L<Paws::CleanRooms>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreatePrivacyBudgetTemplate on the
L<AWS Clean Rooms Service|Paws::CleanRooms> service. Use the attributes of this class
as arguments to method CreatePrivacyBudgetTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreatePrivacyBudgetTemplate.

=head1 SYNOPSIS

    my $cleanrooms = Paws->service('CleanRooms');
    my $CreatePrivacyBudgetTemplateOutput =
      $cleanrooms->CreatePrivacyBudgetTemplate(
      AutoRefresh          => 'CALENDAR_MONTH',
      MembershipIdentifier => 'MyMembershipIdentifier',
      Parameters           => {
        DifferentialPrivacy => {
          Epsilon            => 1,    # min: 1, max: 20
          UsersNoisePerQuery => 1,    # min: 10, max: 100

        },    # OPTIONAL
      },
      PrivacyBudgetType => 'DIFFERENTIAL_PRIVACY',
      Tags              => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      );

    # Results:
    my $PrivacyBudgetTemplate =
      $CreatePrivacyBudgetTemplateOutput->PrivacyBudgetTemplate;

    # Returns a L<Paws::CleanRooms::CreatePrivacyBudgetTemplateOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cleanrooms/CreatePrivacyBudgetTemplate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AutoRefresh => Str

How often the privacy budget refreshes.

If you plan to regularly bring new data into the collaboration, you can
use C<CALENDAR_MONTH> to automatically get a new privacy budget for the
collaboration every calendar month. Choosing this option allows
arbitrary amounts of information to be revealed about rows of the data
when repeatedly queries across refreshes. Avoid choosing this if the
same rows will be repeatedly queried between privacy budget refreshes.

Valid values are: C<"CALENDAR_MONTH">, C<"NONE">

=head2 B<REQUIRED> MembershipIdentifier => Str

A unique identifier for one of your memberships for a collaboration.
The privacy budget template is created in the collaboration that this
membership belongs to. Accepts a membership ID.



=head2 B<REQUIRED> Parameters => L<Paws::CleanRooms::PrivacyBudgetTemplateParametersInput>

Specifies your parameters for the privacy budget template.



=head2 B<REQUIRED> PrivacyBudgetType => Str

Specifies the type of the privacy budget template.

Valid values are: C<"DIFFERENTIAL_PRIVACY">

=head2 Tags => L<Paws::CleanRooms::TagMap>

An optional label that you can assign to a resource when you create it.
Each tag consists of a key and an optional value, both of which you
define. When you use tagging, you can also use tag-based access control
in IAM policies to control access to this resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreatePrivacyBudgetTemplate in L<Paws::CleanRooms>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

