
package Paws::SSMQuickSetup::ListConfigurations;
  use Moose;
  has ConfigurationDefinitionId => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::SSMQuickSetup::Filter]');
  has ManagerArn => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');
  has StartingToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListConfigurations');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/listConfigurations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSMQuickSetup::ListConfigurationsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMQuickSetup::ListConfigurations - Arguments for method ListConfigurations on L<Paws::SSMQuickSetup>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListConfigurations on the
L<AWS Systems Manager QuickSetup|Paws::SSMQuickSetup> service. Use the attributes of this class
as arguments to method ListConfigurations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListConfigurations.

=head1 SYNOPSIS

    my $ssm-quicksetup = Paws->service('SSMQuickSetup');
    my $ListConfigurationsOutput = $ssm -quicksetup->ListConfigurations(
      ConfigurationDefinitionId =>
        'MyListConfigurationsInputConfigurationDefinitionIdString',   # OPTIONAL
      Filters => [
        {
          Key    => 'MyFilterKeyString',                              # max: 128
          Values => [
            'MyFilterValuesMemberString', ...                         # max: 256
          ],

        },
        ...
      ],    # OPTIONAL
      ManagerArn    => 'MyListConfigurationsInputManagerArnString',   # OPTIONAL
      MaxItems      => 1,                                             # OPTIONAL
      StartingToken =>
        'MyListConfigurationsInputStartingTokenString',               # OPTIONAL
    );

    # Results:
    my $ConfigurationsList = $ListConfigurationsOutput->ConfigurationsList;
    my $NextToken          = $ListConfigurationsOutput->NextToken;

    # Returns a L<Paws::SSMQuickSetup::ListConfigurationsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm-quicksetup/ListConfigurations>

=head1 ATTRIBUTES


=head2 ConfigurationDefinitionId => Str

The ID of the configuration definition.



=head2 Filters => ArrayRef[L<Paws::SSMQuickSetup::Filter>]

Filters the results returned by the request.



=head2 ManagerArn => Str

The ARN of the configuration manager.



=head2 MaxItems => Int

Specifies the maximum number of configurations that are returned by the
request.



=head2 StartingToken => Str

The token to use when requesting a specific set of items from a list.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListConfigurations in L<Paws::SSMQuickSetup>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

