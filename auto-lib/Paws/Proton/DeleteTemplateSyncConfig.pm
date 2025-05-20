
package Paws::Proton::DeleteTemplateSyncConfig;
  use Moose;
  has TemplateName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'templateName' , required => 1);
  has TemplateType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'templateType' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteTemplateSyncConfig');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Proton::DeleteTemplateSyncConfigOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Proton::DeleteTemplateSyncConfig - Arguments for method DeleteTemplateSyncConfig on L<Paws::Proton>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteTemplateSyncConfig on the
L<AWS Proton|Paws::Proton> service. Use the attributes of this class
as arguments to method DeleteTemplateSyncConfig.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteTemplateSyncConfig.

=head1 SYNOPSIS

    my $proton = Paws->service('Proton');
    my $DeleteTemplateSyncConfigOutput = $proton->DeleteTemplateSyncConfig(
      TemplateName => 'MyResourceName',
      TemplateType => 'ENVIRONMENT',

    );

    # Results:
    my $TemplateSyncConfig =
      $DeleteTemplateSyncConfigOutput->TemplateSyncConfig;

    # Returns a L<Paws::Proton::DeleteTemplateSyncConfigOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/proton/DeleteTemplateSyncConfig>

=head1 ATTRIBUTES


=head2 B<REQUIRED> TemplateName => Str

The template name.



=head2 B<REQUIRED> TemplateType => Str

The template type.

Valid values are: C<"ENVIRONMENT">, C<"SERVICE">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteTemplateSyncConfig in L<Paws::Proton>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

