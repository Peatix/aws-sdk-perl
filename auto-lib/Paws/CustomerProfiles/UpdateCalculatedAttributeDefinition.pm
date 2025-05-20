
package Paws::CustomerProfiles::UpdateCalculatedAttributeDefinition;
  use Moose;
  has CalculatedAttributeName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'CalculatedAttributeName', required => 1);
  has Conditions => (is => 'ro', isa => 'Paws::CustomerProfiles::Conditions');
  has Description => (is => 'ro', isa => 'Str');
  has DisplayName => (is => 'ro', isa => 'Str');
  has DomainName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DomainName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateCalculatedAttributeDefinition');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/domains/{DomainName}/calculated-attributes/{CalculatedAttributeName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CustomerProfiles::UpdateCalculatedAttributeDefinitionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::UpdateCalculatedAttributeDefinition - Arguments for method UpdateCalculatedAttributeDefinition on L<Paws::CustomerProfiles>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateCalculatedAttributeDefinition on the
L<Amazon Connect Customer Profiles|Paws::CustomerProfiles> service. Use the attributes of this class
as arguments to method UpdateCalculatedAttributeDefinition.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateCalculatedAttributeDefinition.

=head1 SYNOPSIS

    my $profile = Paws->service('CustomerProfiles');
    my $UpdateCalculatedAttributeDefinitionResponse =
      $profile->UpdateCalculatedAttributeDefinition(
      CalculatedAttributeName => 'MytypeName',
      DomainName              => 'Myname',
      Conditions              => {
        ObjectCount => 1,    # min: 1, max: 100; OPTIONAL
        Range       => {
          Unit  => 'DAYS',    # values: DAYS
          Value => 1,         # min: 1, max: 366

        },    # OPTIONAL
        Threshold => {
          Operator => 'EQUAL_TO'
          ,    # values: EQUAL_TO, GREATER_THAN, LESS_THAN, NOT_EQUAL_TO
          Value => 'Mystring1To255',    # min: 1, max: 255

        },    # OPTIONAL
      },    # OPTIONAL
      Description => 'MysensitiveText',    # OPTIONAL
      DisplayName => 'MydisplayName',      # OPTIONAL
      );

    # Results:
    my $AttributeDetails =
      $UpdateCalculatedAttributeDefinitionResponse->AttributeDetails;
    my $CalculatedAttributeName =
      $UpdateCalculatedAttributeDefinitionResponse->CalculatedAttributeName;
    my $Conditions  = $UpdateCalculatedAttributeDefinitionResponse->Conditions;
    my $CreatedAt   = $UpdateCalculatedAttributeDefinitionResponse->CreatedAt;
    my $Description = $UpdateCalculatedAttributeDefinitionResponse->Description;
    my $DisplayName = $UpdateCalculatedAttributeDefinitionResponse->DisplayName;
    my $LastUpdatedAt =
      $UpdateCalculatedAttributeDefinitionResponse->LastUpdatedAt;
    my $Statistic = $UpdateCalculatedAttributeDefinitionResponse->Statistic;
    my $Tags      = $UpdateCalculatedAttributeDefinitionResponse->Tags;

# Returns a L<Paws::CustomerProfiles::UpdateCalculatedAttributeDefinitionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/profile/UpdateCalculatedAttributeDefinition>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CalculatedAttributeName => Str

The unique name of the calculated attribute.



=head2 Conditions => L<Paws::CustomerProfiles::Conditions>

The conditions including range, object count, and threshold for the
calculated attribute.



=head2 Description => Str

The description of the calculated attribute.



=head2 DisplayName => Str

The display name of the calculated attribute.



=head2 B<REQUIRED> DomainName => Str

The unique name of the domain.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateCalculatedAttributeDefinition in L<Paws::CustomerProfiles>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

