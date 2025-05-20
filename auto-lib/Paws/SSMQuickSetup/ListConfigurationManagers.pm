
package Paws::SSMQuickSetup::ListConfigurationManagers;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::SSMQuickSetup::Filter]');
  has MaxItems => (is => 'ro', isa => 'Int');
  has StartingToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListConfigurationManagers');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/listConfigurationManagers');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSMQuickSetup::ListConfigurationManagersOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMQuickSetup::ListConfigurationManagers - Arguments for method ListConfigurationManagers on L<Paws::SSMQuickSetup>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListConfigurationManagers on the
L<AWS Systems Manager QuickSetup|Paws::SSMQuickSetup> service. Use the attributes of this class
as arguments to method ListConfigurationManagers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListConfigurationManagers.

=head1 SYNOPSIS

    my $ssm-quicksetup = Paws->service('SSMQuickSetup');
    my $ListConfigurationManagersOutput =
      $ssm -quicksetup->ListConfigurationManagers(
      Filters => [
        {
          Key    => 'MyFilterKeyString',    # max: 128
          Values => [
            'MyFilterValuesMemberString', ...    # max: 256
          ],

        },
        ...
      ],    # OPTIONAL
      MaxItems      => 1,                                         # OPTIONAL
      StartingToken =>
        'MyListConfigurationManagersInputStartingTokenString',    # OPTIONAL
      );

    # Results:
    my $ConfigurationManagersList =
      $ListConfigurationManagersOutput->ConfigurationManagersList;
    my $NextToken = $ListConfigurationManagersOutput->NextToken;

    # Returns a L<Paws::SSMQuickSetup::ListConfigurationManagersOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm-quicksetup/ListConfigurationManagers>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::SSMQuickSetup::Filter>]

Filters the results returned by the request.



=head2 MaxItems => Int

Specifies the maximum number of configuration managers that are
returned by the request.



=head2 StartingToken => Str

The token to use when requesting a specific set of items from a list.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListConfigurationManagers in L<Paws::SSMQuickSetup>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

