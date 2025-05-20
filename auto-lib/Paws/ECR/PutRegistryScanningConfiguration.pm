
package Paws::ECR::PutRegistryScanningConfiguration;
  use Moose;
  has Rules => (is => 'ro', isa => 'ArrayRef[Paws::ECR::RegistryScanningRule]', traits => ['NameInRequest'], request_name => 'rules' );
  has ScanType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'scanType' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutRegistryScanningConfiguration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECR::PutRegistryScanningConfigurationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECR::PutRegistryScanningConfiguration - Arguments for method PutRegistryScanningConfiguration on L<Paws::ECR>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutRegistryScanningConfiguration on the
L<Amazon Elastic Container Registry|Paws::ECR> service. Use the attributes of this class
as arguments to method PutRegistryScanningConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutRegistryScanningConfiguration.

=head1 SYNOPSIS

    my $api.ecr = Paws->service('ECR');
    my $PutRegistryScanningConfigurationResponse =
      $api . ecr->PutRegistryScanningConfiguration(
      Rules => [
        {
          RepositoryFilters => [
            {
              Filter => 'MyScanningRepositoryFilterValue',    # min: 1, max: 255
              FilterType => 'WILDCARD',                       # values: WILDCARD

            },
            ...
          ],    # max: 100
          ScanFrequency =>
            'SCAN_ON_PUSH',    # values: SCAN_ON_PUSH, CONTINUOUS_SCAN, MANUAL

        },
        ...
      ],    # OPTIONAL
      ScanType => 'BASIC',    # OPTIONAL
      );

    # Results:
    my $RegistryScanningConfiguration =
      $PutRegistryScanningConfigurationResponse->RegistryScanningConfiguration;

    # Returns a L<Paws::ECR::PutRegistryScanningConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.ecr/PutRegistryScanningConfiguration>

=head1 ATTRIBUTES


=head2 Rules => ArrayRef[L<Paws::ECR::RegistryScanningRule>]

The scanning rules to use for the registry. A scanning rule is used to
determine which repository filters are used and at what frequency
scanning will occur.



=head2 ScanType => Str

The scanning type to set for the registry.

When a registry scanning configuration is not defined, by default the
C<BASIC> scan type is used. When basic scanning is used, you may
specify filters to determine which individual repositories, or all
repositories, are scanned when new images are pushed to those
repositories. Alternatively, you can do manual scans of images with
basic scanning.

When the C<ENHANCED> scan type is set, Amazon Inspector provides
automated vulnerability scanning. You may choose between continuous
scanning or scan on push and you may specify filters to determine which
individual repositories, or all repositories, are scanned.

Valid values are: C<"BASIC">, C<"ENHANCED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutRegistryScanningConfiguration in L<Paws::ECR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

