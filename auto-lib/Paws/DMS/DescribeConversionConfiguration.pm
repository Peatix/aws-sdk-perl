
package Paws::DMS::DescribeConversionConfiguration;
  use Moose;
  has MigrationProjectIdentifier => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeConversionConfiguration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DMS::DescribeConversionConfigurationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::DescribeConversionConfiguration - Arguments for method DescribeConversionConfiguration on L<Paws::DMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeConversionConfiguration on the
L<AWS Database Migration Service|Paws::DMS> service. Use the attributes of this class
as arguments to method DescribeConversionConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeConversionConfiguration.

=head1 SYNOPSIS

    my $dms = Paws->service('DMS');
    my $DescribeConversionConfigurationResponse =
      $dms->DescribeConversionConfiguration(
      MigrationProjectIdentifier => 'MyMigrationProjectIdentifier',

      );

    # Results:
    my $ConversionConfiguration =
      $DescribeConversionConfigurationResponse->ConversionConfiguration;
    my $MigrationProjectIdentifier =
      $DescribeConversionConfigurationResponse->MigrationProjectIdentifier;

    # Returns a L<Paws::DMS::DescribeConversionConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dms/DescribeConversionConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MigrationProjectIdentifier => Str

The name or Amazon Resource Name (ARN) for the schema conversion
project to describe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeConversionConfiguration in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

