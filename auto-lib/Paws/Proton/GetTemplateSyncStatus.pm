
package Paws::Proton::GetTemplateSyncStatus;
  use Moose;
  has TemplateName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'templateName' , required => 1);
  has TemplateType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'templateType' , required => 1);
  has TemplateVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'templateVersion' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetTemplateSyncStatus');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Proton::GetTemplateSyncStatusOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Proton::GetTemplateSyncStatus - Arguments for method GetTemplateSyncStatus on L<Paws::Proton>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetTemplateSyncStatus on the
L<AWS Proton|Paws::Proton> service. Use the attributes of this class
as arguments to method GetTemplateSyncStatus.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetTemplateSyncStatus.

=head1 SYNOPSIS

    my $proton = Paws->service('Proton');
    my $GetTemplateSyncStatusOutput = $proton->GetTemplateSyncStatus(
      TemplateName    => 'MyResourceName',
      TemplateType    => 'ENVIRONMENT',
      TemplateVersion => 'MyTemplateVersionPart',

    );

    # Results:
    my $DesiredState = $GetTemplateSyncStatusOutput->DesiredState;
    my $LatestSuccessfulSync =
      $GetTemplateSyncStatusOutput->LatestSuccessfulSync;
    my $LatestSync = $GetTemplateSyncStatusOutput->LatestSync;

    # Returns a L<Paws::Proton::GetTemplateSyncStatusOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/proton/GetTemplateSyncStatus>

=head1 ATTRIBUTES


=head2 B<REQUIRED> TemplateName => Str

The template name.



=head2 B<REQUIRED> TemplateType => Str

The template type.

Valid values are: C<"ENVIRONMENT">, C<"SERVICE">

=head2 B<REQUIRED> TemplateVersion => Str

The template major version.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetTemplateSyncStatus in L<Paws::Proton>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

