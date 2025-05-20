
package Paws::AppRunner::DeleteAutoScalingConfiguration;
  use Moose;
  has AutoScalingConfigurationArn => (is => 'ro', isa => 'Str', required => 1);
  has DeleteAllRevisions => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteAutoScalingConfiguration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppRunner::DeleteAutoScalingConfigurationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppRunner::DeleteAutoScalingConfiguration - Arguments for method DeleteAutoScalingConfiguration on L<Paws::AppRunner>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteAutoScalingConfiguration on the
L<AWS App Runner|Paws::AppRunner> service. Use the attributes of this class
as arguments to method DeleteAutoScalingConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteAutoScalingConfiguration.

=head1 SYNOPSIS

    my $apprunner = Paws->service('AppRunner');
    my $DeleteAutoScalingConfigurationResponse =
      $apprunner->DeleteAutoScalingConfiguration(
      AutoScalingConfigurationArn => 'MyAppRunnerResourceArn',
      DeleteAllRevisions          => 1,                          # OPTIONAL
      );

    # Results:
    my $AutoScalingConfiguration =
      $DeleteAutoScalingConfigurationResponse->AutoScalingConfiguration;

  # Returns a L<Paws::AppRunner::DeleteAutoScalingConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apprunner/DeleteAutoScalingConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AutoScalingConfigurationArn => Str

The Amazon Resource Name (ARN) of the App Runner auto scaling
configuration that you want to delete.

The ARN can be a full auto scaling configuration ARN, or a partial ARN
ending with either C<.../I<name> > or C<.../I<name>/I<revision> >. If a
revision isn't specified, the latest active revision is deleted.



=head2 DeleteAllRevisions => Bool

Set to C<true> to delete all of the revisions associated with the
C<AutoScalingConfigurationArn> parameter value.

When C<DeleteAllRevisions> is set to C<true>, the only valid value for
the Amazon Resource Name (ARN) is a partial ARN ending with:
C<.../name>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteAutoScalingConfiguration in L<Paws::AppRunner>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

